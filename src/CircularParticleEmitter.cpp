//
//  CircularParticleEmitter.cpp
//
//  Created by Jonathan Thomas on 3/24/24.
//

#include "CircularParticleEmitter.hpp"

/**
 The default constructor. These values get changed from the sliders.
 */
CircularParticleEmitter::CircularParticleEmitter() {
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
    
    position.set(0, 0, 0);
    velocity.set(0, -5);
    
    spawnRate = 500;
    amountSpawned = 25;
    lifespan = 1;
    radius = .5;
    timeSinceLastSpawned = 0;
    spawningParticles = false;
}

/**
 Updates the particle emitter, and all of the particles it has spawned. It will spawn particles at the rate specified
 */
void CircularParticleEmitter::update() {
    float time = ofGetElapsedTimeMillis();
    
    for (int i = 0; i < particles.size(); i++) {
        particles.at(i).update();
        if (particles.at(i).age > lifespan * 1000) particles.erase(particles.begin() + i);
    }
    
    if ((time - timeSinceLastSpawned) > (1000 / spawnRate) && spawningParticles) {
        timeSinceLastSpawned = time;
        for (int i = 0; i < amountSpawned; i++) spawnParticle();
    }
}

/**
 Draws the particle emitter and all particles it has spawned
 */
void CircularParticleEmitter::draw() {
    loadVBO();
    
    ofSetColor(ofColor::red);
    ofPushMatrix();
    ofTranslate(position);
    ofRotate(90, 1, 0, 0);
    ofDrawCircle(0, 0, 0, radius);
    ofPopMatrix();
    
    ofSetColor(255, 100, 90);
    
    shader.begin();
    particleTexture.bind();
    vbo.draw(GL_POINTS, 0, (int) particles.size());
    
    particleTexture.unbind();
    shader.end();
}

/**
 Spawns a particle within the bounds of the circular emitter
 It will also apply a small force outwards from the center of the emitter depending on the distance from the center of the emitter
 */
void CircularParticleEmitter::spawnParticle() {
    bool foundPointInCircle = false;
    ofVec3f pos;
    Particle particle;
    
    // get a random offset x withint he bounds of the circle
    float x = ofRandom(-radius, radius);
    // get a random offset y within the bounds of the circle
    float z = ofRandom(sqrt(radius * radius - x * x) * -1, sqrt(radius * radius - x * x));
    
    // set the starting position of the particle + the offset of the particle emitter
    pos.set(x, 0, z);
    particle.setPosition(pos + position);
    particle.setVelocity(velocity);
    particle.forces = (particle.position - position) * 250;
    particles.push_back(particle);
}

/**
 Sets the position of the emitter
 */
void CircularParticleEmitter::setPosition(ofVec3f pos) {
    position.set(pos);
}

// load vertex buffer in preparation for rendering
//
void CircularParticleEmitter::loadVBO() {
    if (particles.size() < 1) return;

    vector<ofVec3f> sizes;
    vector<ofVec3f> points;
    for (int i = 0; i < particles.size(); i++) {
        points.push_back(particles[i].position);
        sizes.push_back(ofVec3f(radius));
    }
    // upload the data to the vbo
    //
    int total = (int)points.size();
    vbo.clear();
    vbo.setVertexData(&points[0], total, GL_STATIC_DRAW);
    vbo.setNormalData(&sizes[0], total, GL_STATIC_DRAW);
}
