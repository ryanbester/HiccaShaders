#include "/lib/common.glsl"

#include "/lib/post/scanlines.glsl"

varying vec2 texCoords;

uniform sampler2D colortex0;

uniform float viewWidth;
uniform float viewHeight;
uniform float frameTimeCounter;

void main() {    
    vec3 Color = texture2D(colortex0, texCoords).rgb;

    gl_FragData[0] = vec4(GetScanlineColor(gl_FragCoord.xy, vec2(viewWidth, viewHeight), texCoords, frameTimeCounter, Color), 1.0f);
}