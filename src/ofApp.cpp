#include "ofApp.h"
#include "Util.h"

//--------------------------------------------------------------
void ofApp::setup(){
    // Set up lighting and load object models
    initLightingAndMaterials();
    
    terrain.loadModel("geo/terrain_modelV2.obj");
    terrain.setScaleNormalization(false);
    lander.loadModel("spaceship/SpaceShipV2.fbx");
    lander.setScaleNormalization(false);
    
    octree.create(terrain.getMesh(0), 20);

    // Set up Cameras
    trackingCam.setPosition(0, 10, 20);
    trackingCam.lookAt(lander.getPosition());
    
    onboardCam.setPosition(lander.getPosition());
    onboardCam.lookAt(lander.getPosition() + ship.heading());
    
    easyCam.setPosition(0, 10, 20);
    easyCam.lookAt(lander.getPosition());
    
    gui.setup();
    gui.add(numOfLevelsToDisplay.setup("Number of Octree Levels", 10, 1, 20));
    hideGUI = false;
    
    bBackgroundLoaded = backgroundImage.load("images/starfield-plain.jpg");
    
    ship.position = ofVec3f(0,6,0);
    
    shipLightOn = false;

}

//--------------------------------------------------------------
void ofApp::update(){
    glm::vec3 min = lander.getSceneMin() + lander.getPosition();
    glm::vec3 max = lander.getSceneMax() + lander.getPosition();
    landerBounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
    colBoxList.clear();
    octree.intersect(landerBounds, octree.root, colBoxList);
    
    terrainNormalVec = ofVec3f(0,0,0);
    for (int i = 0; i < colBoxList.size(); i++) {
        terrainNormalVec += octree.mesh.getNormal(colBoxList.at(i).points.at(0));
    }
    terrainNormalVec.normalize().scale(10);
    
    ofVec3f vec3 = ship.velocity;
    
    if (terrainNormalVec.length() > 0) {
        if (ship.applyForce && vec3.length() > 2 && !explosion.exploding) {
            explosion.reset();
            explosion.explode(ship.position, terrainNormalVec.normalize());
        }
        ship.touchingGround = true;
        ship.velocity = ofVec3f(0,0);
        ship.applyForce = false;
    }
    else {
        ship.touchingGround = false;
    }
    
    altitude = getAltitude() - 2.5;
    
    ship.integrate();
    ship.landerExhaust.setPosition(ship.position - ofVec3f(0, 1.8, 0));
    ship.landerExhaust.update();
    explosion.update();
    
    if (ship.bMoveUp || ship.bMoveDown || ship.bMoveLeft || ship.bMoveRight || ship.bMoveForward || ship.bMoveBackward || ship.bRotateClockwiseKeyDown || ship.bRotateCounterClockwiseKeyDown) {
        ship.landerExhaust.spawningParticles = true;
    }
    else {
        ship.landerExhaust.spawningParticles = false;
    }
    
    glm::vec3 shipPos = ship.position;
    glm::vec3 shipHeading = ship.heading();
    if (!bInDrag) {
        lander.setPosition(shipPos.x, shipPos.y, shipPos.z);
        lander.setRotation(0, ship.rotation, 0, 1, 0);
    }
    
    // Update cameras positions
    trackingCam.setPosition(shipPos - shipHeading * 20.0f + glm::vec3(0, 10, 0));
    trackingCam.lookAt(shipPos);
    
    onboardCam.setPosition(shipPos);
    onboardCam.lookAt(shipPos + shipHeading);

    if (shipLightOn) {
        shipLight.setPosition(ship.position.x, ship.position.y + 30, ship.position.z);
        shipLight.lookAt(ship.position);
    }

}

float ofApp::getAltitude() {
    ofVec3f pointRet;
    ofVec3f mouse(mouseX, mouseY);
    ofVec3f rayPoint = lander.getPosition();
    ofVec3f rayDir = ofVec3f(0, -1, 0);
    rayDir.normalize();
    Ray ray = Ray(Vector3(rayPoint.x, rayPoint.y, rayPoint.z),
        Vector3(rayDir.x, rayDir.y, rayDir.z));
    
    TreeNode selectedNode;
    bool pointSelected = octree.intersect(ray, octree.root, selectedNode, 20, 1);

    if (pointSelected) {
        pointRet = octree.mesh.getVertex(selectedNode.points[0]);
    }
    
    return lander.getPosition().y - pointRet.y;
}

//--------------------------------------------------------------
void ofApp::draw(){
    // draw background image
    //
    if (bBackgroundLoaded) {
        ofPushMatrix();
        ofDisableDepthTest();
        ofSetColor(50, 50, 50);
        ofScale(2, 2);
        backgroundImage.draw(-200, -100);
        ofEnableDepthTest();
        ofPopMatrix();
    }
    
    ofEnableDepthTest();
    
    switch (currentView) {
        case TRACKING_CAMERA:
            trackingCam.begin();
            break;
        case ONBOARD_CAMERA:
            onboardCam.begin();
            break;
        case EASY_CAM:
        default:
            easyCam.begin();
            break;
    }
    
    ofPushMatrix();
    ofEnableLighting();
    
    if (shipLightOn) {
        shipLight.enable();
    } else {
        shipLight.disable();
    }

    terrain.drawFaces();
    lander.drawFaces();
    
    ship.landerExhaust.draw();
    explosion.draw();
    
    glm::vec3 pos = lander.getPosition();
    ofSetColor(ofColor::yellow);
    
    if (bLanderSelected) {

        ofVec3f min = lander.getSceneMin() + lander.getPosition();
        ofVec3f max = lander.getSceneMax() + lander.getPosition();

        Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
        ofNoFill();
        ofSetColor(ofColor::white);
        Octree::drawBox(bounds);

    }
    
    if (!hideLanderBounds) {
        ofNoFill();
        ofSetColor(ofColor::white);
        octree.drawBox(landerBounds);
        // draw colliding boxes
        //
        ofSetColor(ofColor::red);
        for (int i = 0; i < colBoxList.size(); i++) {
            Octree::drawBox(colBoxList[i].box);
        }
        ofDrawLine(lander.getPosition(), terrainNormalVec + lander.getPosition());
    }
    if (displayOctree) {
        ofNoFill();
        ofSetColor(ofColor::white);
        octree.draw(numOfLevelsToDisplay, 0);
    }
    
    ofDisableLighting();
    ofPopMatrix();
    
    switch (currentView) {
        case TRACKING_CAMERA:
            trackingCam.end();
            break;
        case ONBOARD_CAMERA:
            onboardCam.end();
            break;
        case EASY_CAM:
        default:
            easyCam.end();
            break;
    }
    
    ofSetColor(ofColor::white);
    ofDrawBitmapString("Fuel remaining: " + ofToString(ship.fuel, 1) + " seconds", ofGetWindowWidth() - 300, 15);
    ofDrawBitmapString("Altitude: " + ofToString(altitude, 1), ofGetWindowWidth() - 300, 30);
    ofVec3f vec3 = ship.velocity;
    ofDrawBitmapString("Speed: " + ofToString(vec3.length(), 1), ofGetWindowWidth() - 300, 45);
    
    glDepthMask(false);
    if (!hideGUI) gui.draw();
    glDepthMask(true);

}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    
    ship.keyPressed(key);
    switch (key) {
        case '1':
            switchCameraView(TRACKING_CAMERA);
            break;
        case '2':
            switchCameraView(ONBOARD_CAMERA);
            break;
        case '3':
            switchCameraView(EASY_CAM);
            break;
        case 'o':
            displayOctree = !displayOctree;
            break;
        case 'h':
            hideGUI = !hideGUI;
            break;
        case 'b':
            hideLanderBounds = !hideLanderBounds;
            break;
        case 'l':
            shipLightOn = !shipLightOn;
            break;
        default:
            break;
    }
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){
    ship.keyReleased(key);
    switch (key) {
        default:
            break;
    }

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){
    if(easyCam.getMouseInputEnabled()) return;
    if (bInDrag) {
        glm::vec3 landerPos = lander.getPosition();
        glm::vec3 mousePos = getMousePointOnPlane(landerPos, easyCam.getZAxis());
        glm::vec3 delta = mousePos - mousePrev;
        
        landerPos += delta;
        lander.setPosition(landerPos.x, landerPos.y, landerPos.z);
        ship.position = lander.getPosition();
        mousePrev = mousePos;
    }
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){
    
    if(easyCam.getMouseInputEnabled()) return;
    
    glm::vec3 origin = easyCam.getPosition();
    glm::vec3 mouseWorld = easyCam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
    glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
    
    ofVec3f min = lander.getSceneMin() + lander.getPosition();
    ofVec3f max = lander.getSceneMax() + lander.getPosition();

    Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
    bool hit = bounds.intersect(Ray(Vector3(origin.x, origin.y, origin.z), Vector3(mouseDir.x, mouseDir.y, mouseDir.z)), 0, 10000);
    if (hit) {
        bLanderSelected = true;
        mouseDownPos = getMousePointOnPlane(lander.getPosition(), easyCam.getZAxis());
        mousePrev = mouseDownPos;
        bInDrag = true;
    } else {
        bLanderSelected = false;
    }
}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){
    bInDrag = false;
}

//--------------------------------------------------------------
void ofApp::mouseScrolled(int x, int y, float scrollX, float scrollY){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){

}

//--------------------------------------------------------------
// Set up basic ambient lighting in GL
//
void ofApp::initLightingAndMaterials() {

    backgroundLight.setup();
    backgroundLight.setAmbientColor(ofFloatColor(0.5f, 0.5f, 0.5f));
    backgroundLight.setDiffuseColor(ofFloatColor(4.0f, 4.0f, 4.0f));
    backgroundLight.setSpecularColor(ofFloatColor(4.0f, 4.0f, 4.0f));
    backgroundLight.setPosition(20.0f, 20.0f, 20.0f);
    backgroundLight.enable();
    
    // Initialize and set up the landing light
    landingLight1.setup();
    landingLight1.setSpotlight();
    landingLight1.setScale(.1);
    landingLight1.setSpotlightCutOff(45);
    landingLight1.setAttenuation(2, .001, .001);
    landingLight1.setAmbientColor(ofFloatColor(0.1, 0.1, 0.1));
    landingLight1.setDiffuseColor(ofFloatColor(20, 20, 20));
    landingLight1.setSpecularColor(ofFloatColor(10, 10, 10));
    landingLight1.setPosition(-15, 40, -57);
    landingLight1.lookAt(glm::vec3(-15, 0, -57)); // Point the light downwards towards the landing area
    landingLight1.enable();
    
    landingLight2.setup();
    landingLight2.setSpotlight();
    landingLight2.setScale(.1);
    landingLight2.setSpotlightCutOff(45);
    landingLight2.setAttenuation(2, .001, .001);
    landingLight2.setAmbientColor(ofFloatColor(0.1, 0.1, 0.1));
    landingLight2.setDiffuseColor(ofFloatColor(20, 20, 20));
    landingLight2.setSpecularColor(ofFloatColor(10, 10, 10));
    landingLight2.setPosition(-191.6, 40, -255.26);
    landingLight2.lookAt(glm::vec3(-191.6, 0, -255.26)); // Point the light downwards towards the landing area
    landingLight2.enable();
    
    landingLight3.setup();
    landingLight3.setSpotlight();
    landingLight3.setScale(.1);
    landingLight3.setSpotlightCutOff(45);
    landingLight3.setAttenuation(2, .001, .001);
    landingLight3.setAmbientColor(ofFloatColor(0.1, 0.1, 0.1));
    landingLight3.setDiffuseColor(ofFloatColor(20, 20, 20));
    landingLight3.setSpecularColor(ofFloatColor(10, 10, 10));
    landingLight3.setPosition(-109.71, 40, 222.78);
    landingLight3.lookAt(glm::vec3(-109.71, 0, 222.78)); // Point the light downwards towards the landing area
    landingLight3.enable();
    
    landingLight4.setup();
    landingLight4.setSpotlight();
    landingLight4.setScale(.1);
    landingLight4.setSpotlightCutOff(45);
    landingLight4.setAttenuation(2, .001, .001);
    landingLight4.setAmbientColor(ofFloatColor(0.1, 0.1, 0.1));
    landingLight4.setDiffuseColor(ofFloatColor(20, 20, 20));
    landingLight4.setSpecularColor(ofFloatColor(10, 10, 10));
    landingLight4.setPosition(166.96, 40, 174.16);
    landingLight4.lookAt(glm::vec3(166.96, 0, 174.16)); // Point the light downwards towards the landing area
    landingLight4.enable();
    
    // Ship Light
    shipLight.setup();
    shipLight.setSpotlight();
    shipLight.setScale(0.1);
    shipLight.setSpotlightCutOff(15);
    shipLight.setAttenuation(2, 0.001, 0.001);
    shipLight.setAmbientColor(ofFloatColor(0.1, 0.1, 0.1));
    shipLight.setDiffuseColor(ofFloatColor(10, 10, 10));
    shipLight.setSpecularColor(ofFloatColor(5, 5, 5));
    shipLight.setPosition(ship.position.x, ship.position.y + 30, ship.position.z);
}

glm::vec3 ofApp::getMousePointOnPlane(glm::vec3 planePt, glm::vec3 planeNorm) {
    glm::vec3 origin = easyCam.getPosition();
    glm::vec3 mouseWorld = easyCam.screenToWorld(glm::vec3(ofGetMouseX(), ofGetMouseY(), 0));
    glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
    float distance;

    bool hit = glm::intersectRayPlane(origin, mouseDir, planePt, planeNorm, distance);
    if (hit) {
        return origin + distance * mouseDir;
    }
    return glm::vec3(0, 0, 0);
}

// Switch between different camera views
void ofApp::switchCameraView(CameraView view) {
    currentView = view;
    
    switch (currentView) {
        case TRACKING_CAMERA:
            easyCam.disableMouseInput();
            break;
        case ONBOARD_CAMERA:
            easyCam.disableMouseInput();
            break;
        case EASY_CAM:
            if (easyCam.getMouseInputEnabled()) {
                easyCam.disableMouseInput();
            } else {
                // Set the easyCam's position and orientation based on the current camera
                if (previousView != EASY_CAM){
                    easyCam.setPosition(lander.getPosition() + glm::vec3(0, 10, 20));
                    easyCam.lookAt(lander.getPosition());
                }
                easyCam.enableMouseInput();
            }            break;
    }
    
    previousView = currentView;
}
