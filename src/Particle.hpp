//
//  Particle.hpp
//  3dSpaceGame
//
//  Created by Jonathan Thomas on 5/16/24.
//

#ifndef Particle_hpp
#define Particle_hpp

#pragma once
#include "GameObject.h"


#endif /* Particle_hpp */

class Particle: public GameObject {
public:
    float age;
    float birthtime;
    
    ofTexture sprite;
    ofShader shader;
    
    Particle();
    void update();
    void draw();
};
