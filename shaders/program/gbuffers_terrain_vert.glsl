#include "/lib/common.glsl"

#include "/lib/render/transform.glsl"
#include "/lib/world/curvature.glsl"
#include "/lib/world/fog.glsl"

varying vec2 texCoords;
varying vec4 lmcoord;
varying vec3 normal;
varying vec4 color;

varying float vertDistance;

uniform float frameTimeCounter;

void main() {
    gl_Position = TransformVertex(gl_Vertex, gl_ModelViewMatrix, gl_ProjectionMatrix);

	lmcoord = gl_TextureMatrix[1] * gl_MultiTexCoord1;

    texCoords = gl_MultiTexCoord0.st;
    normal = gl_NormalMatrix * gl_Normal;
    color = gl_Color;

    gl_Position.xyz = ApplyCurvature(gl_Position.xyz);

    vertDistance = GetFogDistance(gl_ModelViewMatrix, gl_Vertex.xyz, 0);
}
