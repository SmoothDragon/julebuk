$fn=16;

rotate(a = [90, 0, 0]) {
	union() {
		union() {
			difference() {
				hull() {
					cylinder(center = true, d = 12, h = 2);
					translate(v = [40, 0, 0]) {
						cylinder(center = true, d = 12, h = 2);
					}
				}
				cylinder(center = true, d = 8, h = 3);
			}
			difference() {
				union() {
					difference() {
						difference() {
							hull() {
								cylinder(center = true, d = 12, h = 7);
								translate(v = [-40, 0, 0]) {
									cylinder(center = true, d = 12, h = 7);
								}
							}
							cylinder(center = true, d = 5, h = 8);
						}
						cube(center = true, size = [13, 13, 3]);
					}
					cylinder(center = true, d = 7, h = 7);
				}
				cylinder(center = true, d = 5, h = 8);
			}
		}
		union() {
			translate(v = [0, 0, 7]) {
				hull() {
					cylinder(center = true, d = 12, h = 4);
					translate(v = [20, 0, 0]) {
						cylinder(center = true, d = 12, h = 4);
					}
				}
			}
			translate(v = [0, 0, -7]) {
				hull() {
					cylinder(center = true, d = 12, h = 4);
					translate(v = [20, 0, 0]) {
						cylinder(center = true, d = 12, h = 4);
					}
				}
			}
			cylinder(center = true, d = 4, h = 10);
		}
	}
}
