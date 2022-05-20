#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White transmit 1.0}
camera {orthographic
  right -9.91*x up 22.97*y
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
#declare Rcell = 0.000;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
     translate LOC}
#end

cylinder {< -3.97, -10.94, -28.32>, <  4.01, -10.94, -28.32>, Rcell pigment {Black}}
cylinder {< -3.97,  -2.96, -28.32>, <  4.01,  -2.96, -28.32>, Rcell pigment {Black}}
cylinder {< -3.97,  -2.96,   0.00>, <  4.01,  -2.96,   0.00>, Rcell pigment {Black}}
cylinder {< -3.97, -10.94,   0.00>, <  4.01, -10.94,   0.00>, Rcell pigment {Black}}
cylinder {< -3.97, -10.94, -28.32>, < -3.97,  -2.96, -28.32>, Rcell pigment {Black}}
cylinder {<  4.01, -10.94, -28.32>, <  4.01,  -2.96, -28.32>, Rcell pigment {Black}}
cylinder {<  4.01, -10.94,   0.00>, <  4.01,  -2.96,   0.00>, Rcell pigment {Black}}
cylinder {< -3.97, -10.94,   0.00>, < -3.97,  -2.96,   0.00>, Rcell pigment {Black}}
cylinder {< -3.97, -10.94, -28.32>, < -3.97, -10.94,   0.00>, Rcell pigment {Black}}
cylinder {<  4.01, -10.94, -28.32>, <  4.01, -10.94,   0.00>, Rcell pigment {Black}}
cylinder {<  4.01,  -2.96, -28.32>, <  4.01,  -2.96,   0.00>, Rcell pigment {Black}}
cylinder {< -3.97,  -2.96, -28.32>, < -3.97,  -2.96,   0.00>, Rcell pigment {Black}}
atom(< -3.23,  -0.52, -35.34>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #0
atom(< -0.59,  -0.79, -35.41>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #1
atom(<  2.10,  -0.60, -35.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #2
atom(< -3.28,  -0.45, -30.09>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #3
atom(< -0.64,  -0.54, -30.12>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #4
atom(<  2.10,  -0.52, -30.27>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #5
atom(< -3.34,  -0.44, -32.79>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #6
atom(< -0.61,  -0.57, -32.82>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #7
atom(<  2.00,  -0.50, -32.81>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #8
atom(< -1.95,   1.23, -28.80>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #9
atom(<  0.66,   1.10, -28.89>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #10
atom(<  3.25,   1.22, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #11
atom(< -1.93,   1.20, -31.49>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #12
atom(<  0.75,   1.27, -31.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #13
atom(<  3.38,   1.36, -31.56>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #14
atom(< -1.85,   1.19, -34.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #15
atom(<  0.81,   1.16, -34.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #16
atom(<  3.28,   1.24, -34.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #17
atom(< -3.19,   2.94, -35.56>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #18
atom(< -0.65,   3.15, -35.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #19
atom(<  1.85,   3.05, -35.75>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #20
atom(< -3.39,   2.94, -30.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #21
atom(< -0.63,   2.96, -30.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #22
atom(<  1.95,   3.14, -30.26>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #23
atom(< -3.21,   2.98, -32.94>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #24
atom(< -0.62,   2.81, -32.88>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #25
atom(<  1.99,   3.11, -33.09>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #26
atom(< -2.01,   4.67, -31.73>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #27
atom(<  0.41,   5.15, -29.25>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #28
atom(< -2.81,   7.61, -35.96>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #29
atom(<  0.19,   5.55, -34.51>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #30
atom(<  0.61,   4.67, -31.70>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #31
atom(<  2.48,   5.77, -30.86>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #32
atom(< -2.42,   5.38, -29.56>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #33
atom(<  2.84,   5.09, -35.00>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #34
atom(<  3.40,   9.05, -33.83>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #35
atom(< -1.97,   8.77, -31.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #36
atom(<  0.44,   9.50, -29.33>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #37
atom(<  3.31,   8.56, -31.20>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #38
atom(<  2.56,   9.41, -35.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #39
atom(<  0.41,   9.13, -33.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #40
atom(< -0.32,   7.47, -30.42>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #41
atom(< -3.40,   6.13, -33.44>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #42
atom(< -0.20,   9.02, -31.28>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #43
atom(< -3.67,   4.39, -34.28>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #44
atom(< -3.40,   7.87, -32.58>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #45
atom(<  1.97,   8.74, -32.29>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #46
atom(<  0.94,   6.54, -31.26>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #47
atom(< -0.82,   4.95, -33.13>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #48
atom(<  1.39,   6.26, -35.57>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #49
atom(<  1.08,  10.02, -35.26>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #50
atom(< -1.19,   6.50, -28.90>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #51
atom(<  2.42,   9.48, -29.82>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #52
atom(< -3.76,   4.78, -30.65>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #53
atom(< -1.64,   8.73, -35.11>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #54
atom(< -1.48,  10.28, -35.78>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #55

// no constraints
