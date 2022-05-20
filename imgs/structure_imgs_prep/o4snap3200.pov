#version 3.5;
#include "transforms.inc"
background { color rgb <1, 1, 1>}
camera {
  orthographic
  location <0, 1e+06, 0>
  direction <0, -2.02, 0>
  right <18.5222, 0, 0>
  up <0, 0, 13.8917>
  sky <0, 0, 13.8917>
  Axis_Rotate_Trans(<0, 1, 0>, 0)
  translate <4.35103, 4.28774, 4.13545>
}
light_source {
  <0, 0, 0>
  color <1.5, 1.5, 1.5>
  shadowless
  parallel
  point_at <0, -1, 0>
}
#macro SPRTCLE(pos, particleRadius, particleColor) // Macro for spherical particles
sphere { pos, particleRadius
         texture { pigment { color particleColor } }
}
#end
#macro DPRTCLE(pos, particleRadius, particleColor) // Macro for flat disc particles facing the camera
disc { pos, <0, 1, 0>, particleRadius
         texture { pigment { color particleColor } }
}
#end
#macro CPRTCLE(pos, particleRadius, particleColor) // Macro for cubic particles
box { pos - <particleRadius,particleRadius,particleRadius>, pos + <particleRadius,particleRadius,particleRadius>
         texture { pigment { color particleColor } }
}
#end
#macro SQPRTCLE(pos, particleRadius, particleColor) // Macro for flat square particles facing the camera
triangle { pos+<1, 0, 1>*particleRadius, pos+<1, 0, -1>*particleRadius, pos+<-1, 0, -1>*particleRadius
         texture { pigment { color particleColor } }
}
triangle { pos+<1, 0, 1>*particleRadius, pos+<-1, 0, -1>*particleRadius, pos+<-1, 0, 1>*particleRadius
         texture { pigment { color particleColor } }
}
#end
#macro CYL(base, dir, cylRadius, cylColor) // Macro for cylinders
cylinder { base, base + dir, cylRadius
         texture { pigment { color cylColor } }
}
#end
SPRTCLE(<3.60225, 0.517326, 4.34125>, 0.74, rgbt <1, 0.0509804, 0.0509804, 0>)
SPRTCLE(<3.4307, 1.22283, 5.3358>, 0.74, rgbt <1, 0.0509804, 0.0509804, 0>)
SPRTCLE(<6.49328, 1.43991, 4.83066>, 0.74, rgbt <1, 0.0509804, 0.0509804, 0>)
SPRTCLE(<6.47376, 0.406991, 5.49229>, 0.74, rgbt <1, 0.0509804, 0.0509804, 0>)
