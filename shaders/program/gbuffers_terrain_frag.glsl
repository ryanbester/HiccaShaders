#include "/lib/common.glsl"
#include "/lib/world/fog.glsl"

varying vec2 texCoords;
varying vec4 lmcoord;
varying vec3 normal;
varying vec4 color;

uniform sampler2D texture;
uniform sampler2D lightmap;

varying float vertDistance;

void main(){
    vec4 albedo = texture2D(texture, texCoords) * texture2D(lightmap, lmcoord.st) * color;

    /* DRAWBUFFERS:01 */
    gl_FragData[0] = vec4(LinearFog(albedo.rgb, vertDistance, gl_Fog.start, gl_Fog.end, gl_Fog.color), albedo.a);
    gl_FragData[1] = vec4(normal * 0.5f + 0.5f, 1.0f);
}