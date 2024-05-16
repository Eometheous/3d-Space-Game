//
//  Particle.cpp
//
//  Created by Jonathan Thomas on 3/24/24.
//

#include "Particle.hpp"

/**
 The default constructor for a particle
 */
Particle::Particle() {
    position.set(0, 0);
    velocity.set(0, 0);
    acceleration.set(0, 0);
    forces.set(0, -20);
    age = 0;
    birthTime = ofGetElapsedTimeMillis();
}

/**
 Creates a particle with a starting position and applied force
 */
Particle::Particle(ofVec3f pos, ofVec3f force) {
    position.set(pos);
    velocity.set(0, 0);
    acceleration.set(0, 0);
    forces.set(force);
}

/**
 Updates the particle's age and integrates it for a new position based on the forces applied to it
 */
void Particle::update() {
    age = (ofGetElapsedTimeMillis()) - birthTime;
    integrate();
}

void Particle::integrate() {
    float dt = 1.0 / ofGetFrameRate();
    
    position += velocity * dt;
    
    ofVec3f currentAcceleration = acceleration;
    currentAcceleration += forces;
    velocity += currentAcceleration * dt;
    
    forces.set(velocity * -.5);
}

/**
 Draws a yellow sphere at the particles position
 */
void Particle::draw() {
    ofSetColor(ofColor::yellow);
    ofDrawSphere(position, .01);
}

/**
 Updates the particle's position
 */
void Particle::setPosition(ofVec3f pos) {
    position.set(pos);
}

/**
 Updates the particle's velocity
 */
void Particle::setVelocity(ofVec3f f) {
    velocity.set(f);
}
