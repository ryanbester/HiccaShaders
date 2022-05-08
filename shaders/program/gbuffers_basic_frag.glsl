#include "/lib/common.glsl"

#include "/lib/world/fog.glsl"

uniform sampler2D texture;
uniform sampler2D lightmap;

varying vec4 color;
varying vec4 texcoord;
varying vec4 lmcoord;

varying vec3 normal;

varying float vertDistance;

uniform int fogMode;

const int GL_EXP = 2048;
const int GL_LINEAR = 9729;

void main() {
	/* DRAWBUFFERS:01 */
	gl_FragData[0] = texture2D(texture, texcoord.st) * texture2D(lightmap, lmcoord.st) * color;
	gl_FragData[1] = vec4(vec3(gl_FragCoord.z), 1.0);

	if (fogMode == GL_LINEAR) {
        gl_FragData[0] = vec4(LinearFog(gl_FragData[0].rgb, vertDistance, gl_Fog.start, gl_Fog.end, gl_Fog.color), gl_FragData[0].a);
	}
}
