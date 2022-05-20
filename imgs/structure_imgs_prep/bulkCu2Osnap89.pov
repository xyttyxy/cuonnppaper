#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {orthographic
  right -13.31*x up 13.42*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}


light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}
// no fog
#declare simple = finish {phong 0.7}
#declare pale = finish {ambient 0.5 diffuse 0.85 roughness 0.001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.1 roughness 0.04}
#declare vmd = finish {ambient 0.0 diffuse 0.65 phong 0.1 phong_size 40.0 specular 0.5 }
#declare jmol = finish {ambient 0.2 diffuse 0.6 specular 1 roughness 0.001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.7 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient 0.15 brilliance 2 diffuse 0.6 metallic specular 1.0 roughness 0.001 reflection 0.0}
#declare glass = finish {ambient 0.05 diffuse 0.3 specular 1.0 roughness 0.001}
#declare glass2 = finish {ambient 0.01 diffuse 0.3 specular 1.0 reflection 0.25 roughness 0.001}
#declare Rcell = 0.050;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     translate LOC}
#end

cylinder {< -6.34,  -2.24,  -8.63>, <  2.29,  -2.24,  -8.63>, Rcell pigment {Black}}
cylinder {< -6.34,   6.39,  -8.63>, <  2.29,   6.39,  -8.63>, Rcell pigment {Black}}
cylinder {< -6.34,   6.39,   0.00>, <  2.29,   6.39,   0.00>, Rcell pigment {Black}}
cylinder {< -6.34,  -2.24,   0.00>, <  2.29,  -2.24,   0.00>, Rcell pigment {Black}}
cylinder {< -6.34,  -2.24,  -8.63>, < -6.34,   6.39,  -8.63>, Rcell pigment {Black}}
cylinder {<  2.29,  -2.24,  -8.63>, <  2.29,   6.39,  -8.63>, Rcell pigment {Black}}
cylinder {<  2.29,  -2.24,   0.00>, <  2.29,   6.39,   0.00>, Rcell pigment {Black}}
cylinder {< -6.34,  -2.24,   0.00>, < -6.34,   6.39,   0.00>, Rcell pigment {Black}}
cylinder {< -6.34,  -2.24,  -8.63>, < -6.34,  -2.24,   0.00>, Rcell pigment {Black}}
cylinder {<  2.29,  -2.24,  -8.63>, <  2.29,  -2.24,   0.00>, Rcell pigment {Black}}
cylinder {<  2.29,   6.39,  -8.63>, <  2.29,   6.39,   0.00>, Rcell pigment {Black}}
cylinder {< -6.34,   6.39,  -8.63>, < -6.34,   6.39,   0.00>, Rcell pigment {Black}}
atom(< -4.70,   0.20,  -6.43>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #0
atom(< -3.67,   3.57,  -4.50>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #1
atom(< -3.08,  -1.23,  -9.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #2
atom(< -2.42,   2.20,  -6.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #3
atom(< -0.43,   0.97,  -9.02>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #4
atom(<  0.20,   4.85,  -6.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #5
atom(<  1.08,  -1.03, -11.27>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #6
atom(<  1.50,   2.98,  -8.58>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #7
atom(< -3.40,  -2.55,  -6.52>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #8
atom(< -2.78,   0.83,  -4.20>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #9
atom(< -1.51,  -0.39,  -6.83>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #10
atom(< -0.80,   3.85,  -4.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #11
atom(<  0.27,  -1.96,  -8.59>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #12
atom(<  1.13,   1.30,  -6.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #13
atom(<  2.28,   0.30,  -8.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #14
atom(<  2.94,   3.87,  -5.94>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #15
atom(< -2.18,  -2.08,  -3.25>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #16
atom(< -1.39,   1.69,  -1.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #17
atom(< -0.90,  -3.97,  -5.95>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #18
atom(< -0.35,  -0.14,  -3.91>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #19
atom(<  1.40,  -1.48,  -6.05>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #20
atom(<  2.14,   2.46,  -3.88>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #21
atom(<  2.72,  -2.71,  -8.11>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #22
atom(<  3.64,   0.96,  -5.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #23
atom(< -1.39,  -5.07,  -3.12>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #24
atom(< -0.80,  -1.62,  -0.97>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #25
atom(<  0.27,  -2.79,  -3.21>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #26
atom(<  1.07,   0.69,  -1.19>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #27
atom(<  1.93,  -4.54,  -5.56>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #28
atom(<  2.27,  -0.73,  -3.50>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #29
atom(<  4.33,  -2.33,  -5.58>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #30
atom(<  5.02,   1.32,  -3.43>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #31
atom(< -5.04,   4.83,  -4.43>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #32
atom(< -3.24,  -0.75,  -7.34>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #33
atom(<  0.78,  -0.22,  -9.54>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #34
atom(<  1.39,   2.62, -10.48>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #35
atom(< -0.00,  -0.21,  -5.72>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #36
atom(< -2.17,   2.39,  -4.88>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #37
atom(<  1.25,   3.44,  -6.81>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #38
atom(< -3.73,  -4.26,  -5.48>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #39
atom(< -3.43,  -0.59,  -3.28>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #40
atom(< -0.41,  -3.59,  -7.67>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #41
atom(<  2.58,  -2.84,  -6.24>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #42
atom(<  3.33,   0.98,  -4.10>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #43
atom(< -1.12,  -3.53,  -4.00>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #44
atom(< -0.36,   0.13,  -2.02>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #45
atom(<  2.14,  -2.24,  -2.50>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #46
atom(<  2.76,   1.22,  -0.43>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #47

// no constraints
