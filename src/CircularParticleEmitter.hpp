//
//  CircularParticleEmitter.hpp
//
//  Created by Jonathan Thomas on 3/24/24.
//

#ifndef CircularParticleEmitter_hpp
#define CircularParticleEmitter_hpp

#include "Particle.hpp"

#endif /* CircularParticleEmitter_hpp */

class CircularParticleEmitter {
public:
    ofVec3f position;
    ofVec3f velocity;
    
    float spawnRate;
    float amountSpawned;
    float lifespan;
    float radius;
    
    float timeSinceLastSpawned;
    
    bool spawningParticles;
    
    // shaders
    //
    ofVbo vbo;
    ofShader shader;
    ofTexture particleTexture;
    
    vector<Particle> particles;
    
    CircularParticleEmitter();
    void update();
    void draw();
    void spawnParticle();
    void setPosition(ofVec3f pos);
    void loadVBO();
};
