#include "/lib/common.glsl"

vec4 TransformVertex(vec4 vertex, mat4 mv, mat4 proj) { 
    #if DISABLE_PROJ_MAT == 1
        #if DISABLE_VIEW_MAT == 1
            return vertex;
        #else
            return mv * vertex;
        #endif
    #endif

    #if DISABLE_VIEW_MAT == 1
        #if DISABLE_PROJ_MAT == 1
            return vertex;
        #else
            return proj * vertex;
        #endif
    #endif    

    return proj * mv * vertex;
}
