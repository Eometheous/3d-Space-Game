//
//  Explosion.cpp
//  PursuitGame
//
//  Created by Jonathan Thomas on 3/29/24.
//

#include "Explosion.hpp"

/**
 Default constructor for the explosion
 */
Explosion::Explosion() {
    ofDisableArbTex();
    // load textures
    //
    if (!ofLoadImage(particleTexture, "images/dot.png")) {
        cout << "Particle Texture File: images/dot.png not found" << endl;
        ofExit();
    }
    
#ifdef TARGET_OPENGLES
    shader.load("shaders_gles/shader");
#else
    shader.load("shaders/shader");
#endif
    
    explosionForce = 5;
    for (int i = 0; i < 5000; i++) {
        explosionParticles.push_back(new Particle());
    }
    explosionSound1.load("sounds/Explosion1.wav");
    explosionSound2.load("sounds/Explosion2.wav");
    explosionSound3.load("sounds/Explosion3.wav");
    
    radius = 100;
}

/**
 updates all of the particles in the explosion
 */
void Explosion::update() {
    if (exploding) {
        for (int i = 0; i < explosionParticles.size(); i++) {
            explosionParticles.at(i)->forces = ofVec3f(0, -1.625f, 0);
            explosionParticles.at(i)->integrate();
        }
    }
}

/**
 Draws all of the particles in the explosion using shaders
 */
void Explosion::draw() {
    if (exploding) {
        loadVBO();
        
        glDepthMask(GL_FALSE);

        ofSetColor(255, 100, 90);

        ofEnableBlendMode(OF_BLENDMODE_ADD);
        ofEnablePointSprites();
        
        shader.begin();
        particleTexture.bind();
        vbo.draw(GL_POINTS, 0, (int) explosionParticles.size());
        
        particleTexture.unbind();
        shader.end();
        
        ofDisablePointSprites();
        ofDisableBlendMode();
        ofEnableAlphaBlending();

        // set back the depth mask
        //
        glDepthMask(GL_TRUE);
    }
}

/**
 Starts an explosion at a position and with an initial velocity
 */
void Explosion::explode(ofVec3f at, ofVec3f initialVelocity) {
    for (int i = 0; i < explosionParticles.size(); i++) {
        explosionParticles.at(i)->position = at;
        explosionParticles.at(i)->velocity += initialVelocity;
    }
    exploding = true;
    explodedAtTime = ofGetElapsedTimeMillis();
    explosionSound1.play();
    explosionSound2.play();
    explosionSound3.play();
}

/**
 Resets the position and velocity of a explosion
 */
void Explosion::reset() {
    exploding = false;
    for (int i = 0; i < explosionParticles.size(); i++) {
        // Generate a random point on the surface of a unit sphere
        float theta = ofRandom(0, TWO_PI);  // Random angle in [0, 2π]
        float phi = acos(ofRandom(-1, 1));  // Random angle in [0, π]
        
        // Convert spherical coordinates to Cartesian coordinates
        float x = sin(phi) * cos(theta);
        float y = sin(phi) * sin(theta);
        float z = cos(phi);
        
        // Scale by a random factor to distribute within the sphere
        float scale = ofRandom(0, explosionForce);
        x *= scale;
        y *= scale;
        z *= scale;

        // Set the particle velocity
        explosionParticles.at(i)->velocity = ofVec3f(x, y, z);
    }
}

/**
 load vertex buffer in preparation for rendering
 code given by Keven Smith
 */
void Explosion::loadVBO() {
    if (explosionParticles.size() < 1) return;

    vector<ofVec3f> sizes;
    vector<ofVec3f> points;
    for (int i = 0; i < explosionParticles.size(); i++) {
        points.push_back(explosionParticles[i]->position);
        sizes.push_back(ofVec3f(radius));
    }
    // upload the data to the vbo
    //
    int total = (int)points.size();
    vbo.clear();
    vbo.setVertexData(&points[0], total, GL_STATIC_DRAW);
    vbo.setNormalData(&sizes[0], total, GL_STATIC_DRAW);
}
