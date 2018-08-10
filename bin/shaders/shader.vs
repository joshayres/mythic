#version 330 core

layout(location = 0) in vec2 position;
layout(location = 1) in vec2 texCoord;

uniform mat4 scale;
uniform mat4 transform;
uniform mat4 pr;

out DATA
{
	vec2 tc;
} vs_out;

void main() {
	gl_Position.xy = (pr * transform * scale * vec4(position, 0.0, 1.0)).xy;// = scale * transform * pr * vec4(position.xy, 0, 1);
	gl_Position.z = 0.0;
	gl_Position.w = 1.0;
	vs_out.tc = texCoord;
}