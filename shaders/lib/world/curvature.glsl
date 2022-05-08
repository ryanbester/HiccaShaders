#include "/lib/common.glsl"

vec3 ApplyCurvature(vec3 position) {
    vec3 curvedPos = position;

    #if ENABLE_CURVATURE_X == 1
        #if CURVATURE_SIGN_X == 1
            curvedPos.x -= dot(curvedPos, curvedPos) / - CURVATURE_AMOUNT_X;
        #else
            curvedPos.x -= dot(curvedPos, curvedPos) / CURVATURE_AMOUNT_X;
        #endif  
    #endif

    #if ENABLE_CURVATURE_Y == 1
        #if CURVATURE_SIGN_Y == 1
            curvedPos.y -= dot(curvedPos, curvedPos) / - CURVATURE_AMOUNT_Y;
        #else
            curvedPos.y -= dot(curvedPos, curvedPos) / CURVATURE_AMOUNT_Y;
        #endif  
    #endif

    #if ENABLE_CURVATURE_Z == 1
        #if CURVATURE_SIGN_Z == 1
            curvedPos.z -= dot(curvedPos, curvedPos) / - CURVATURE_AMOUNT_Z;
        #else
            curvedPos.z -= dot(curvedPos, curvedPos) / CURVATURE_AMOUNT_Z;
        #endif  
    #endif

    return curvedPos;
}