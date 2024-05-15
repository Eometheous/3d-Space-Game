//
//  GameObject.h
//  3DSpaceGame
//
//  Created by Danny Garcia on 5/15/24.
//
#pragma once

#include "ofMain.h"

class GameObject {
public:
    GameObject();
    
    ofVec3f position;
    ofVec3f velocity;
    ofVec3f acceleration;
    float damping;
    float mass;
    void integrate();
    void draw();
};
