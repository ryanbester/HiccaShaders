#include "/lib/common.glsl"

varying vec4 color;

void main() {
    gl_Position = ftransform();

    color = gl_Color;
}
