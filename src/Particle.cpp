//
//  Particle.cpp
//  3dSpaceGame
//
//  Created by Jonathan Thomas on 5/16/24.
//

#include "Particle.hpp"

Particle::Particle() {
    shader.load("shaders/shader");
    
    age = 0;
    birthtime = ofGetElapsedTimeMillis() / 1000;
    position = ofVec2f();
}

void Particle::update() {
    age = (ofGetElapsedTimeMillis() / 1000) - birthtime;
    integrate();
}

void Particle::draw() {
    shader.begin();
    ofMatrix4x4 translation = ofMatrix4x4();
    translation.translate(position);
    
    ofPushMatrix();
    
    ofMultMatrix(translation);
    ofDrawSphere(position, .01);
    ofPopMatrix();
    shader.end();
}
