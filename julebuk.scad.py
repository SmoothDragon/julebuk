#!/usr/bin/env python3

'''Basic Solid Python setup for openscad.
'''

from solid import *
from solid.utils import *

import solid as sd
import solid.utils as su
import numpy as np




def parseArguments():
    # Argument parsing
    import argparse
    parser = argparse.ArgumentParser(
        description='Generate SCAD for object')
    parser.add_argument('-l', action='store', default='30', dest='length',
        type=float, help='Length of object.')
    parser.add_argument('--gap', action='store', default='1', dest='gap',
        type=float, help='Tolerance gap between pieces.')
    parser.add_argument('-n', action='store', default='64', dest='fn',
        type=int, help='Curvature parameter. Number of sides on circle.')
    return parser.parse_args()


def leg_pair(
    rad_leg:'Radius of leg',
    len_leg:'Length of leg from center of joint to end of foot',
    rad_crossbar:'Radius of crossbar',
    len_crossbar:'Distance from centers of leg joint',
    len_spacer:'Width of ribbon like spacers in leg',
    ):
    '''Make pair of legs joined by a circluar rod.
    The idea is that the crossbar will pass through the body.
    That way the legs can articulate together.
    '''
    leg = sd.sphere(rad_leg)
    leg = sd.hull()(leg, sd.translate([-len_leg,0,0])(leg))
    leg = sd.intersection()(leg,
            sd.cube([2*len_leg, 2*rad_leg, 2*rad_leg], center=True))
    # Remove annulus of material to look like red ribbon
    spacer = sd.cylinder(r=rad_leg+1, h=len_spacer, center=True)
    spacer -= sd.cylinder(r=rad_leg-1, h=len_spacer+1, center=True)
    spacer = sd.rotate([0,90,0])(spacer)
    leg -= sd.translate([-len_leg*.25,0,0])(spacer)
    leg -= sd.translate([-len_leg*.75,0,0])(spacer)
    # make flattened cylinder fro cross connect between legs
    # Adjust tolerances so it locks into place when turned?
    crossbar = sd.cylinder(r=rad_crossbar, h=len_crossbar, center=True)
    crossbar = sd.rotate([90,0,0])(crossbar)
    legs = union()(
        sd.translate([0,-len_crossbar/2,0])(leg),
        sd.translate([0,len_crossbar/2,0])(leg),
        crossbar,
        )
    return legs


def julebuk(
    length:'Length of object',
    gap:'Tolerance between pieces',
    fn:'Curvature parameter',
    body_radius:'Julebuk body radius'=12,
    rad_leg:'Leg radius'=8,
    len_leg:'Len length'=24,
    len_crossbar:'Length between center of joints'=20,
    rad_crossbar:'Radius of crossbar'=2,
    len_spacer=2,
    **args):  # Catch all for everything else
    body_length = 2.5*body_radius
    # Make spheres for front and back of body, then hull
    body = sd.sphere(body_radius)
    body = sd.hull()(body, sd.translate([body_length,0,0])(body))
    body = sd.translate([0,0,body_radius])(body)

    neck = sd.sphere(rad_leg)
    # face = sd.hull()(neck, sd.translate([-.5*rad_leg,0,-1.5*rad_leg])(sd.sphere(rad_leg/2)))
    face = sd.hull()(neck, sd.translate([-.5*rad_leg,0,-1.5*rad_leg])(sd.rotate([0,30,0])(sd.cylinder(rad_leg/2,1))))
    neck = sd.hull()(neck, sd.translate([0,0,1.5*len_leg])(sd.scale(.5)(neck)))
    neck += sd.translate([-rad_leg/2,0,1.5*len_leg])(face)
    
    neck = sd.translate([rad_leg-body_radius,0,rad_leg])(neck)

    # neck = sd.cylinder(r=rad_leg, h=2*len_leg, center=True)
    # neck = sd.translate([0,0,len_leg])(neck)
    body += neck

    front_legs = leg_pair(rad_leg=rad_leg, len_leg=len_leg, len_crossbar=len_crossbar, rad_crossbar=rad_crossbar, len_spacer=len_spacer)
    back_legs = sd.rotate([0,0,180])(front_legs)
    front_legs = sd.translate([rad_leg-body_radius+2*gap,0,rad_leg])(front_legs)
    back_legs = sd.translate([body_length-(rad_leg-body_radius+2*gap),0,rad_leg])(back_legs)
    # Make larger hull to subtract from body
    front_leg_hole = leg_pair(
        rad_leg=rad_leg+gap,
        len_leg=len_leg,
        len_crossbar=len_crossbar,
        rad_crossbar=rad_crossbar+gap,
        len_spacer=len_spacer,
        )
    front_leg_hole += sd.rotate([0,-90,0])(front_leg_hole)
    back_leg_hole = sd.rotate([0,0,180])(front_leg_hole)
    front_leg_hole = sd.translate([(rad_leg-body_radius+2*gap),0,rad_leg])(front_leg_hole)
    back_leg_hole = sd.translate([body_length-(rad_leg-body_radius+2*gap),0,rad_leg])(back_leg_hole)
    body -= front_leg_hole
    body -= back_leg_hole
    # For testing legs to make print faster
    cutter = cube([1000,1000,1000], center=True)
    # body = sd.intersection()(body, cutter)
    goat = body+front_legs+back_legs


    horn = su.extrude_along_path(
        shape_pts=star(5),
        path_pts=[(20*np.cos(x), 20*np.sin(x), 2*x) for x in np.linspace(0,-.5*np.pi,100)],
        )
    horn = sd.rotate([90,180,0])(horn)
    horn = sd.translate([0,5,2*len_leg])(sd.scale(.5)(horn))
    horn += sd.mirror(v=[0,1,0])(horn)
    goat = sd.intersection()(goat, sd.translate([0,0,500+2])(cutter))
    # goat = goat + horn
    return goat

def star(num_points=5, outer_rad=3, dip_factor=0.5) -> List[Point3]:
    star_pts = []
    for i in range(2 * num_points):
        rad = outer_rad - i % 2 * dip_factor * outer_rad
        angle = radians(360 / (2 * num_points) * i)
        star_pts.append(Point3(rad * np.cos(angle), rad * np.sin(angle), 0))
    return star_pts

if __name__ == '__main__':
    args = parseArguments()
    parameters = vars(args)  # Makes a dictionary from argument keywords
    final = julebuk(**parameters)
    print(scad_render(final, file_header=f'$fn={args.fn};'))
