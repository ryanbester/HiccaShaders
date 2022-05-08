#include "/lib/common.glsl"

float GetFogDistance(mat4 modelViewMat, vec3 pos, int shape) {
    if (shape == 0) {
        return length((modelViewMat * vec4(pos, 1.0)).xyz);
    } else {
        float distXZ = length((modelViewMat * vec4(pos.x, 0.0, pos.z, 1.0)).xyz);
        float distY = length((modelViewMat * vec4(0.0, pos.y, 0.0, 1.0)).xyz);
        return max(distXZ, distY);
    }
}

vec3 LinearFog(vec3 color, float vertDistance, float start, float end, vec4 fogColor) {
    if (vertDistance <= start) {
        return color;
    }

    float fogValue = vertDistance < end ? smoothstep(start, end, vertDistance) : 1.0;
    return mix(color, fogColor.rgb, fogValue * fogColor.a);
}
