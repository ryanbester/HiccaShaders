#include "/lib/common.glsl"

varying vec4 color;

void main() {
    gl_FragData[0] = vec4(color.rgb, 1.0f);
}
