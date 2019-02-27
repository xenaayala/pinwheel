#version 330 core
layout (location=0) in vec3 position;
layout (location=1) in vec3 color;

out vec3 our_color;

uniform mat4 transform;

void main()
{
    gl_Position=transform*vec4(position,1.0f);
    //gl_Position=vec4(position,1.0f);
    our_color=color;
}

