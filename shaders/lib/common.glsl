#ifndef _COMMON_GLSL_

#define _COMMON_GLSL_

#define ENABLE_CURVATURE_X 0 //[0 1]
#define ENABLE_CURVATURE_Y 0 //[0 1]
#define ENABLE_CURVATURE_Z 0 //[0 1]
#define CURVATURE_AMOUNT_X 20 //[0 10 20 30 40 50 60 70 80 90 100 200 300 400 500 600 700 800 900 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 20000 30000]
#define CURVATURE_AMOUNT_Y 20 //[0 10 20 30 40 50 60 70 80 90 100 200 300 400 500 600 700 800 900 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 20000 30000]
#define CURVATURE_AMOUNT_Z 20 //[0 10 20 30 40 50 60 70 80 90 100 200 300 400 500 600 700 800 900 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 20000 30000]
#define CURVATURE_SIGN_X 0 //[0 1]
#define CURVATURE_SIGN_Y 0 //[0 1]
#define CURVATURE_SIGN_Z 0 //[0 1]

#define DISABLE_PROJ_MAT 0 //[0 1]
#define DISABLE_VIEW_MAT 0 //[0 1]

#define POST_SCANLINES_ENABLE 0 //[0 1]
#define POST_SCANLINES_DENSITY 1.0 //[0.0 0.5 1.0 1.5 2.0 2.5 3.0]
#define POST_SCANLINES_LINE_OPACITY 0.3 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define POST_SCANLINES_NOISE_OPACITY 0.2 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]
#define POST_SCANLINES_FLICKERING 0.03 //[0.00 0.03 0.06 1.0 2.0 3.0]

#endif // _COMMON_GLSL_