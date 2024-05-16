//
//  SpaceShip.cpp
//  3DSpaceGame
//
//  Created by Danny Garcia on 5/15/24.
//

#include "SpaceShip.h"

SpaceShip::SpaceShip(){
    position = glm::vec3(0, 6, 0);
    acceleration = glm::vec3(0, 0, 0);
    angularAcceleration = 0.0f;
    velocity = glm::vec3(0, 0, 0);
    angularVelocity = glm::vec3(0, 0, 0);
    rotation = 0.0f;
    gravity = glm::vec3(0, -1.625f, 0); // Moon gravity
}

glm::vec3 SpaceShip::heading() {
    glm::quat rotationQuat = glm::angleAxis(glm::radians(rotation), glm::vec3(0, 1, 0));
    glm::vec3 defaultHeading(0, 1, 0);
    return glm::normalize(rotationQuat * defaultHeading);
}

void SpaceShip::integrate() {
    
    glm::vec3 headingDirection = heading();
    glm::vec3 leftDirection = glm::normalize(glm::cross(glm::vec3(0, 0, 1), headingDirection));
    glm::vec3 forwardDirection = glm::normalize(glm::cross(glm::vec3(1, 0, 0), headingDirection));
    
    if(bMoveLeft && !touchingGround) {
        acceleration += leftDirection * THRUST_FORCE;
    }
    
    if (bMoveRight && !touchingGround) {
        acceleration -= leftDirection * THRUST_FORCE;
    }
    
    if (bMoveForward && !touchingGround) {
        acceleration += forwardDirection * THRUST_FORCE;
    }
    
    if (bMoveBackward && !touchingGround) {
        acceleration -= forwardDirection * THRUST_FORCE;
    }
    
    if (bMoveUp) {
        acceleration += headingDirection * THRUST_FORCE;
    }
    
    if (bMoveDown && !touchingGround) {
        acceleration -= headingDirection * THRUST_FORCE;
    }
    
    float angularAcceleration = 0.0f;
    if(bRotateClockwiseKeyDown){
        angularAcceleration -= ANGULAR_ACCELERATION;
    }
    if (bRotateCounterClockwiseKeyDown) {
        angularAcceleration += ANGULAR_ACCELERATION;
    }
    
    angularVelocity += angularAcceleration * ofGetLastFrameTime();
    angularVelocity *= ANGULAR_DAMPING;
    rotation += glm::degrees(angularVelocity.y) * ofGetLastFrameTime();
    
    // Apply gravity force if the flag is true
     if (applyForce) {
         acceleration += gravity;
         acceleration += turbulenceForce();
     }
    
    velocity += acceleration * ofGetLastFrameTime();
    velocity *= SPACECRAFT_DAMPING;
    position += velocity * ofGetLastFrameTime();
    
    acceleration = glm::vec3(0, 0, 0);
    angularAcceleration = 0.0f;
}

void SpaceShip::keyPressed(int key){
    switch (key) {
        case OF_KEY_UP:
            // move forward
            bMoveForward = true;
            applyForce = true;
            break;
        case OF_KEY_DOWN:
            // move backwards
            bMoveBackward = true;
            applyForce = true;
            break;
        case OF_KEY_LEFT:
            // move left
            bMoveLeft = true;
            applyForce = true;
            break;
        case OF_KEY_RIGHT:
            // move right
            bMoveRight = true;
            applyForce = true;
            break;
        case 'w':
            // SpaceShip thrust UP
            bMoveUp = true;
            applyForce = true;
            break;
        case 's':
            // SpaceShip thrust DOWN
            bMoveDown = true;
            applyForce = true;
            break;
        case 'a':
            // rotate ship counter-clockwise (about Y axis)
            bRotateCounterClockwiseKeyDown = true;
            applyForce = true;
            break;
        case 'd':
            // rotate ship clockwise (about Y axis)
            bRotateClockwiseKeyDown = true;
            applyForce = true;
            break;
        default:
            break;
    }
}

void SpaceShip::keyReleased(int key){
    
    switch (key) {
        case OF_KEY_UP:
            bMoveForward = false;
            break;
        case OF_KEY_DOWN:
            bMoveBackward = false;
            break;
        case OF_KEY_LEFT:
            bMoveLeft = false;
            break;
        case OF_KEY_RIGHT:
            bMoveRight = false;
            break;
        case 'w':
            bMoveUp = false;
            break;
        case 's':
            bMoveDown = false;
            break;
        case 'a':
            bRotateCounterClockwiseKeyDown = false;
            break;
        case 'd':
            bRotateClockwiseKeyDown = false;
            break;
        default:
            break;
    }

}

glm::vec3 SpaceShip::turbulenceForce() {
    float maxTurbulence = 10.0f;
    float x = ofRandom(-maxTurbulence, maxTurbulence);
    float y = ofRandom(-maxTurbulence, maxTurbulence);
    float z = ofRandom(-maxTurbulence, maxTurbulence);
    
    return glm::vec3(x, y, z);
}
