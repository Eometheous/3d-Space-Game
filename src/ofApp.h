#pragma once

#include "ofMain.h"
#include "ofxAssimpModelLoader.h"
#include "Octree.h"
#include "ofxGui.h"
#include "SpaceShip.h"
#include <glm/gtx/intersect.hpp>
#include "Explosion.hpp"

// Camera views
enum CameraView {
    TRACKING_CAMERA,
    ONBOARD_CAMERA,
    EASY_CAM
};

class ofApp : public ofBaseApp{

    public:
        void setup() override;
        void update() override;
        void draw() override;
        void exit() override;

        void keyPressed(int key) override;
        void keyReleased(int key) override;
        void mouseMoved(int x, int y ) override;
        void mouseDragged(int x, int y, int button) override;
        void mousePressed(int x, int y, int button) override;
        void mouseReleased(int x, int y, int button) override;
        void mouseScrolled(int x, int y, float scrollX, float scrollY) override;
        void mouseEntered(int x, int y) override;
        void mouseExited(int x, int y) override;
        void windowResized(int w, int h) override;
        void dragEvent(ofDragInfo dragInfo) override;
        void gotMessage(ofMessage msg) override;
    ofxAssimpModelLoader terrain, lander;
    
    // GUI
    ofxPanel gui;
    ofxIntSlider numOfLevelsToDisplay;
    bool hideGUI;
    
    // Octree
    bool displayOctree;
    Octree octree;
    Box boundingBox, landerBounds;
    bool hideLanderBounds;
    vector<TreeNode> colBoxList;
    ofVec3f terrainNormalVec;
    
    // SpaceShip object
    SpaceShip ship;
    
    // Background
    ofImage backgroundImage;
    bool bBackgroundLoaded = false;
    
    // Dragging lander
    bool bInDrag = false;
    bool bLanderLoaded = false;
    bool bLanderSelected = false;
    glm::vec3 mousePrev, mouseDownPos;     // Previous mouse position
    glm::vec3 dragPlanePoint;// Point on the drag plane
    glm::vec3 dragPlaneNormal;// Normal of the drag plane
    glm::vec3 getMousePointOnPlane(glm::vec3 planePt, glm::vec3 planeNorm);
    
    // Camera
    ofEasyCam easyCam;
    ofCamera trackingCam;
    ofCamera onboardCam;
    CameraView currentView = EASY_CAM; // Default view
    CameraView previousView = EASY_CAM;
    void switchCameraView(CameraView view);
    
    // explosion
    Explosion explosion;
    
    // altitude scensor
    float altitude;
    float getAltitude();

    // Lighting
    void initLightingAndMaterials();
    ofLight landingLight1, landingLight2, landingLight3, landingLight4, shipLight, backgroundLight;
    bool shipLightOn;
};
