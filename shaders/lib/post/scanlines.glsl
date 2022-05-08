#include "/lib/common.glsl"

float random (vec2 st) {
    return fract(sin(dot(st.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}


vec3 GetScanlineColor(vec2 fragCoord, vec2 viewport, vec2 texCoords, float time, vec3 color) {
    #if POST_SCANLINES_ENABLE == 0
        return color;
    #endif

    vec2 uv = fragCoord/viewport;
    
    float count = viewport.y * POST_SCANLINES_DENSITY;
    vec2 sl = vec2(sin(texCoords.y * count), cos(texCoords.y * count));
    vec3 scanlines = vec3(sl.x, sl.y, sl.x);

    vec3 col = color;
    col += col * scanlines * POST_SCANLINES_LINE_OPACITY;
    col += col * vec3(random(texCoords * time)) * POST_SCANLINES_NOISE_OPACITY;
    col += col * sin(110.0 * time) * POST_SCANLINES_FLICKERING;

    return col;
}
