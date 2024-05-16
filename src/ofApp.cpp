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

    // Set Lander Position at startup and have camera look at lander
    cam.setPosition(0, 10, 20);
    cam.lookAt(lander.getPosition());
    
    gui.setup();
    gui.add(numOfLevelsToDisplay.setup("Number of Octree Levels", 10, 1, 20));
    hideGUI = false;
    
    bBackgroundLoaded = backgroundImage.load("images/starfield-plain.jpg");
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
    
    ship.integrate();
    
    glm::vec3 shipPos = ship.position;
    glm::vec3 shipHeading = ship.heading();
    if (!bInDrag) {
        lander.setPosition(shipPos.x, shipPos.y, shipPos.z);
        lander.setRotation(0, ship.rotation, 0, 1, 0);
    }
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
    
    cam.begin();
    ofPushMatrix();
    ofEnableLighting();
    
    terrain.drawFaces();
    lander.drawFaces();
    
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
    cam.end();
    
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
        case 'o':
            displayOctree = !displayOctree;
            break;
        case 'h':
            hideGUI = !hideGUI;
            break;
        case 'b':
            hideLanderBounds = !hideLanderBounds;
            break;
        case 'c':
            if(cam.getMouseInputEnabled()) cam.disableMouseInput();
            else cam.enableMouseInput();
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
    if(cam.getMouseInputEnabled()) return;
    if (bInDrag) {
        glm::vec3 landerPos = lander.getPosition();
        glm::vec3 mousePos = getMousePointOnPlane(landerPos, cam.getZAxis());
        glm::vec3 delta = mousePos - mousePrev;
        
        landerPos += delta;
        lander.setPosition(landerPos.x, landerPos.y, landerPos.z);
        ship.position = lander.getPosition();
        mousePrev = mousePos;
        
//        glm::vec3 mouseCurrent = getMousePointOnPlane(dragPlanePoint, dragPlaneNormal);
//        glm::vec3 diff = mouseCurrent - mousePrev;
//        glm::vec3 newPosition = lander.getPosition() + diff;
//        lander.setPosition(newPosition.x, newPosition.y, newPosition.z);
//        mousePrev = mouseCurrent;
    }
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){
    
    if(cam.getMouseInputEnabled()) return;
    
    glm::vec3 origin = cam.getPosition();
    glm::vec3 mouseWorld = cam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
    glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
    
    ofVec3f min = lander.getSceneMin() + lander.getPosition();
    ofVec3f max = lander.getSceneMax() + lander.getPosition();

    Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
    bool hit = bounds.intersect(Ray(Vector3(origin.x, origin.y, origin.z), Vector3(mouseDir.x, mouseDir.y, mouseDir.z)), 0, 10000);
    if (hit) {
        bLanderSelected = true;
        mouseDownPos = getMousePointOnPlane(lander.getPosition(), cam.getZAxis());
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

    static float ambient[] =
    { .5f, .5f, .5, 1.0f };
    static float diffuse[] =
    { 1.0f, 1.0f, 1.0f, 1.0f };

    static float position[] =
    {5.0, 5.0, 5.0, 0.0 };

    static float lmodel_ambient[] =
    { 1.0f, 1.0f, 1.0f, 1.0f };

    static float lmodel_twoside[] =
    { GL_TRUE };


    glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
    glLightfv(GL_LIGHT0, GL_POSITION, position);

    glLightfv(GL_LIGHT1, GL_AMBIENT, ambient);
    glLightfv(GL_LIGHT1, GL_DIFFUSE, diffuse);
    glLightfv(GL_LIGHT1, GL_POSITION, position);


    glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
    glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, lmodel_twoside);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
//    glEnable(GL_LIGHT1);
    glShadeModel(GL_SMOOTH);
} 

glm::vec3 ofApp::getMousePointOnPlane(glm::vec3 planePt, glm::vec3 planeNorm) {
    glm::vec3 origin = cam.getPosition();
    glm::vec3 mouseWorld = cam.screenToWorld(glm::vec3(ofGetMouseX(), ofGetMouseY(), 0));
    glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
    float distance;

    bool hit = glm::intersectRayPlane(origin, mouseDir, planePt, planeNorm, distance);
    if (hit) {
        return origin + distance * mouseDir;
    }
    return glm::vec3(0, 0, 0);
}
