#include "ofApp.h"
#include "util.h"

//--------------------------------------------------------------
void ofApp::setup(){
    initLightingAndMaterials();
    terrain.loadModel("geo/cs134_terrain.obj");
    terrain.setScaleNormalization(false);

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofBackground(ofColor::black);
    ofEnableDepthTest();
    
    cam.begin();
    ofPushMatrix();
    ofEnableLighting();
    
    terrain.drawFaces();
    
    ofDisableLighting();
    ofPopMatrix();
    cam.end();

}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

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
