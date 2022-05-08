#include "/lib/common.glsl"

varying vec2 texCoords;

uniform vec3 sunPosition;

uniform sampler2D colortex0;
uniform sampler2D colortex1;

const float sunPathRotation = -40.0f;
const float ambient = 0.1f;

void main() {
    vec3 albedo = pow(texture2D(colortex0, texCoords).rgb, vec3(2.2f));

    vec3 normal = normalize(texture2D(colortex1, texCoords).rgb * 2.0f - 1.0f);

    float ndotl = max(dot(normal, normalize(sunPosition)), 0.0f);

    vec3 diffuse = albedo * (ndotl + ambient);

    gl_FragData[0] = vec4(diffuse, 1.0f);
    gl_FragData[0] = vec4(albedo, 1.0f);
}
