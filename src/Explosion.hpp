//
//  Explosion.hpp
//  PursuitGame
//
//  Created by Jonathan Thomas on 3/29/24.
//

#ifndef Explosion_hpp
#define Explosion_hpp
#pragma once
#include "SpaceShip.h"

#endif /* Explosion_hpp */

class Explosion {
public:
    vector<Particle*> explosionParticles;
    bool exploding;
    int explosionForce;
    float explodedAtTime;
    float radius;
    
    ofSoundPlayer explosion;
    
    // shaders
    ofVbo vbo;
    ofShader shader;
    ofTexture particleTexture;
    
    Explosion();
    void update();
    void draw();
    void explode(ofVec3f at, ofVec3f initialVelocity);
    void reset();
    void loadVBO();
};
