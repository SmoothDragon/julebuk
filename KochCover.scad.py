#! /usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import division
import os
import sys
import math
import numpy as np

# Assumes SolidPython is in site-packages or elsewhwere in sys.path
from solid import *
from solid.utils import *

import solid as sd


def kochSnowflake(diameter=100, iterations=3):
    rad = diameter/2
    xrad = rad*math.sqrt(3)/2
    yrad = rad/2
    # Make an equilateral triangle with circumradius=rad
    koch = [polygon([(0,rad), (-xrad, -yrad), (xrad, -yrad)])]
    # Rotate triangle and union to make hexagram
    hexagram = union()(koch[0], rotate(60)(koch[0]))
    koch.append(hexagram)
    if iterations < 2:
        return koch[iterations]
    for level in range(1, iterations):  # indicates level we are building from
        shape = koch[level]
        for i in range(6):
            shape = union()(
                rotate(60)(shape),
                translate([0,rad*2/3,0])(scale(1/3)(koch[level])),
                )
        koch.append(shape)
    return koch[-1]

def kochBarrel(diameter=50, iterations=3, levels=100):
    snowflake = kochSnowflake(diameter=diameter, iterations=iterations)
    X = np.linspace(0, 1, num=levels+1)
    Y = np.sqrt(1-X*X)
    layers = []
    for i in range(len(X) - 1):
        if X[i] > .8:
            break
        piece = linear_extrude(
                    height=diameter/levels/2,
                    scale=Y[i+1]/Y[i],
                    slices=1,
                    )(scale(Y[i])(snowflake))
        piece = translate([0,0,i*diameter/levels/2])(piece)
        layers.append(piece)
    upper = union()(*layers)
    return union()(upper,
                   rotate([0,180,0])(upper),
                   )



if __name__ == '__main__':
    out_dir = sys.argv[1] if len(sys.argv) > 1 else os.curdir
    file_out = os.path.join(out_dir, 'path_extrude_example.scad')

    level_h = 5
    diameter=50
    num_iter =3
    flake=kochSnowflake(diameter=diameter, iterations=num_iter)
    piece = sd.linear_extrude(height=2*level_h, center=False)(flake)
    block = sd.translate([0,diameter,0])(piece)
    block = sd.union()(*[sd.rotate([0,0,i*60])(block) for i in range(6)])
    block += sd.cylinder(d=np.sqrt(3)*diameter, h=level_h)
    block -= piece
    # piece = piece - sd.linear_extrude(height=2*level_h, center=False)(sd.rotate([0,0,30])(sd.scale(1/np.sqrt(3))(kochSnowflake(iterations=4))))
    # piece = piece - sd.linear_extrude(height=4*level_h, center=True)(sd.scale(1/3)(flake))
    print(scad_render(block))
    # print("%(__file__)s: SCAD file written to: \n%(file_out)s" % vars())
    # scad_render_to_file(a, file_out, include_orig_code=True)
