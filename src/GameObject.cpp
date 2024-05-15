//
//  GameObject.cpp
//  3DSpaceGame
//
//  Created by Danny Garcia on 5/15/24.
//

#include "GameObject.h"

GameObject::GameObject() {
    
    // Initalizing GameObject with resonable values
    velocity.set(0, 0, 0);
    acceleration.set(0, 0, 0);
    position.set(0, 0, 0);
    damping = .99;
    mass = 1;
}

void GameObject::integrate(){
    
    // Update position from velocity and time interval
    position += velocity * ofGetLastFrameTime();
    
    // Update velocity (based on acceleration)
    velocity += acceleration * ofGetLastFrameTime();
    
    // multiply final result by the damping factor to sim drag
    velocity *= damping;
}
