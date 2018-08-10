#version 330 core

out vec4 color;

in DATA
{
	vec2 tc;
} fs_in;

uniform sampler2D tex;

void main() {

	color = texture2D(tex, fs_in.tc);
	if(color.w<1.0)
		discard;
}