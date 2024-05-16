//
//  Particle.hpp
//
//  Created by Jonathan Thomas on 3/24/24.
//

#ifndef Particle_hpp
#define Particle_hpp

#include "GameObject.h"

#endif /* Particle_hpp */

class Particle: public GameObject {
public:
    ofVec3f forces;
    
    float age;
    float birthTime;
    
    ofShader shader;
    
    Particle();
    Particle(ofVec3f position, ofVec3f force);
    
    void update();
    void integrate();
    void draw();
    void setPosition(ofVec3f pos);
    void setVelocity(ofVec3f f);
};
