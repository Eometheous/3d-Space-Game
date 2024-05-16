//
//  SpaceShip.h
//  3DSpaceGame
//
//  Created by Danny Garcia on 5/15/24.
//

#pragma once

#include "ofMain.h"
#include "glm/gtx/intersect.hpp"

#define THRUST_FORCE 10.0f
#define ROTATION_SPEED 90.0f
#define SPACECRAFT_DAMPING 0.99f
#define ANGULAR_ACCELERATION 10.0f
#define ANGULAR_DAMPING 0.99f

class SpaceShip{
public:
    SpaceShip();
    
    void keyPressed(int key);
    void keyReleased(int key);
    void update();
    
    // Physics
    void integrate();
    glm::vec3 heading();
    
    glm::vec3 position;
    glm::vec3 acceleration;
    float angularAcceleration = 0.0f;
    glm::vec3 velocity;
    glm::vec3 angularVelocity;
    float rotation = 0.0f;
    
    // Control flags
    bool bMoveLeft = false;
    bool bMoveRight = false;
    bool bMoveForward = false;
    bool bMoveBackward = false;
    bool bMoveUp = false;
    bool bMoveDown = false;
    bool bRotateClockwiseKeyDown = false;
    bool bRotateCounterClockwiseKeyDown = false;
    
    // Force acting on the SpaceShip
    glm::vec3 gravity;
    bool applyForce = false;
    glm::vec3 turbulenceForce();
    
    // Fuel-related variables
    float fuel;
    const float maxFuel = 120;  // 2 minutes of fuel
    bool thrustersOn;

};
