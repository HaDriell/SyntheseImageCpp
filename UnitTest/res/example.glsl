//////////////////////////////////////////
//Vertex Shader
#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;


out vec4 vertexColor;
out vec3 vertexNormal;

void main()
{
    gl_Position = vec4(position, 1.0);
    vertexColor = vec4(1.0, 0, 0, 1.0);
    vertexNormal = normal;
}


//////////////////////////////////////////
//Fragment Shader
#version 330 core

out vec4 color;

in vec4 vertexColor;
in vec3 vertexNormal;
void main()
{
    color = vertexColor * dot(vec3(0, 0, -1), vertexNormal);
}