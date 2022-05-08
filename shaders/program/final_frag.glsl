#include "/lib/common.glsl"

varying vec2 texCoords;

uniform sampler2D colortex0;

void main() {
    gl_FragData[0] = vec4(pow(texture2D(colortex0, texCoords).rgb, vec3(1.0f / 2.2f)), 1.0f);
}
