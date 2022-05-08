#include "/lib/common.glsl"

#include "/lib/render/transform.glsl"
#include "/lib/world/curvature.glsl"
#include "/lib/world/fog.glsl"

varying vec4 color;
varying vec4 lmcoord;
varying vec4 texcoord;

varying vec3 normal;

varying float vertDistance;

void main() { 
    gl_Position = TransformVertex(gl_Vertex, gl_ModelViewMatrix, gl_ProjectionMatrix);

	lmcoord = gl_TextureMatrix[1] * gl_MultiTexCoord1;
	
	texcoord = gl_MultiTexCoord0;

    vertDistance = GetFogDistance(gl_ModelViewMatrix, gl_Vertex.xyz, 0);

    gl_Position.xyz = ApplyCurvature(gl_Position.xyz);


    normal = gl_NormalMatrix * gl_Normal;
    color = gl_Color;
}
