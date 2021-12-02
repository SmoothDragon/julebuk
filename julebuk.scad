$fn=64;


intersection() {
	union() {
		difference() {
			union() {
				translate(v = [0, 0, 12]) {
					hull() {
						sphere(r = 12);
						translate(v = [30.0000000000, 0, 0]) {
							sphere(r = 12);
						}
					}
				}
				translate(v = [-4, 0, 8]) {
					union() {
						hull() {
							sphere(r = 8);
							translate(v = [0, 0, 36.0000000000]) {
								scale(v = 0.5000000000) {
									sphere(r = 8);
								}
							}
						}
						translate(v = [-4.0000000000, 0, 36.0000000000]) {
							hull() {
								sphere(r = 8);
								translate(v = [-4.0000000000, 0, -12.0000000000]) {
									rotate(a = [0, 30, 0]) {
										cylinder(h = 1, r = 4.0000000000);
									}
								}
							}
						}
					}
				}
			}
			translate(v = [-2.0000000000, 0, 8]) {
				union() {
					translate(v = [0, -10.0000000000, 0]) {
						difference() {
							intersection() {
								hull() {
									sphere(r = 9.0000000000);
									translate(v = [-24, 0, 0]) {
										sphere(r = 9.0000000000);
									}
								}
								cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
							}
							translate(v = [-6.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 10.0000000000);
										cylinder(center = true, h = 3, r = 8.0000000000);
									}
								}
							}
							translate(v = [-18.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 10.0000000000);
										cylinder(center = true, h = 3, r = 8.0000000000);
									}
								}
							}
						}
					}
					translate(v = [0, 10.0000000000, 0]) {
						difference() {
							intersection() {
								hull() {
									sphere(r = 9.0000000000);
									translate(v = [-24, 0, 0]) {
										sphere(r = 9.0000000000);
									}
								}
								cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
							}
							translate(v = [-6.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 10.0000000000);
										cylinder(center = true, h = 3, r = 8.0000000000);
									}
								}
							}
							translate(v = [-18.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 10.0000000000);
										cylinder(center = true, h = 3, r = 8.0000000000);
									}
								}
							}
						}
					}
					rotate(a = [90, 0, 0]) {
						cylinder(center = true, h = 20, r = 3.0000000000);
					}
					rotate(a = [0, -90, 0]) {
						union() {
							translate(v = [0, -10.0000000000, 0]) {
								difference() {
									intersection() {
										hull() {
											sphere(r = 9.0000000000);
											translate(v = [-24, 0, 0]) {
												sphere(r = 9.0000000000);
											}
										}
										cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
									}
									translate(v = [-6.0000000000, 0, 0]) {
										rotate(a = [0, 90, 0]) {
											difference() {
												cylinder(center = true, h = 2, r = 10.0000000000);
												cylinder(center = true, h = 3, r = 8.0000000000);
											}
										}
									}
									translate(v = [-18.0000000000, 0, 0]) {
										rotate(a = [0, 90, 0]) {
											difference() {
												cylinder(center = true, h = 2, r = 10.0000000000);
												cylinder(center = true, h = 3, r = 8.0000000000);
											}
										}
									}
								}
							}
							translate(v = [0, 10.0000000000, 0]) {
								difference() {
									intersection() {
										hull() {
											sphere(r = 9.0000000000);
											translate(v = [-24, 0, 0]) {
												sphere(r = 9.0000000000);
											}
										}
										cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
									}
									translate(v = [-6.0000000000, 0, 0]) {
										rotate(a = [0, 90, 0]) {
											difference() {
												cylinder(center = true, h = 2, r = 10.0000000000);
												cylinder(center = true, h = 3, r = 8.0000000000);
											}
										}
									}
									translate(v = [-18.0000000000, 0, 0]) {
										rotate(a = [0, 90, 0]) {
											difference() {
												cylinder(center = true, h = 2, r = 10.0000000000);
												cylinder(center = true, h = 3, r = 8.0000000000);
											}
										}
									}
								}
							}
							rotate(a = [90, 0, 0]) {
								cylinder(center = true, h = 20, r = 3.0000000000);
							}
						}
					}
				}
			}
			translate(v = [32.0000000000, 0, 8]) {
				rotate(a = [0, 0, 180]) {
					union() {
						translate(v = [0, -10.0000000000, 0]) {
							difference() {
								intersection() {
									hull() {
										sphere(r = 9.0000000000);
										translate(v = [-24, 0, 0]) {
											sphere(r = 9.0000000000);
										}
									}
									cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
								}
								translate(v = [-6.0000000000, 0, 0]) {
									rotate(a = [0, 90, 0]) {
										difference() {
											cylinder(center = true, h = 2, r = 10.0000000000);
											cylinder(center = true, h = 3, r = 8.0000000000);
										}
									}
								}
								translate(v = [-18.0000000000, 0, 0]) {
									rotate(a = [0, 90, 0]) {
										difference() {
											cylinder(center = true, h = 2, r = 10.0000000000);
											cylinder(center = true, h = 3, r = 8.0000000000);
										}
									}
								}
							}
						}
						translate(v = [0, 10.0000000000, 0]) {
							difference() {
								intersection() {
									hull() {
										sphere(r = 9.0000000000);
										translate(v = [-24, 0, 0]) {
											sphere(r = 9.0000000000);
										}
									}
									cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
								}
								translate(v = [-6.0000000000, 0, 0]) {
									rotate(a = [0, 90, 0]) {
										difference() {
											cylinder(center = true, h = 2, r = 10.0000000000);
											cylinder(center = true, h = 3, r = 8.0000000000);
										}
									}
								}
								translate(v = [-18.0000000000, 0, 0]) {
									rotate(a = [0, 90, 0]) {
										difference() {
											cylinder(center = true, h = 2, r = 10.0000000000);
											cylinder(center = true, h = 3, r = 8.0000000000);
										}
									}
								}
							}
						}
						rotate(a = [90, 0, 0]) {
							cylinder(center = true, h = 20, r = 3.0000000000);
						}
						rotate(a = [0, -90, 0]) {
							union() {
								translate(v = [0, -10.0000000000, 0]) {
									difference() {
										intersection() {
											hull() {
												sphere(r = 9.0000000000);
												translate(v = [-24, 0, 0]) {
													sphere(r = 9.0000000000);
												}
											}
											cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
										}
										translate(v = [-6.0000000000, 0, 0]) {
											rotate(a = [0, 90, 0]) {
												difference() {
													cylinder(center = true, h = 2, r = 10.0000000000);
													cylinder(center = true, h = 3, r = 8.0000000000);
												}
											}
										}
										translate(v = [-18.0000000000, 0, 0]) {
											rotate(a = [0, 90, 0]) {
												difference() {
													cylinder(center = true, h = 2, r = 10.0000000000);
													cylinder(center = true, h = 3, r = 8.0000000000);
												}
											}
										}
									}
								}
								translate(v = [0, 10.0000000000, 0]) {
									difference() {
										intersection() {
											hull() {
												sphere(r = 9.0000000000);
												translate(v = [-24, 0, 0]) {
													sphere(r = 9.0000000000);
												}
											}
											cube(center = true, size = [48, 18.0000000000, 18.0000000000]);
										}
										translate(v = [-6.0000000000, 0, 0]) {
											rotate(a = [0, 90, 0]) {
												difference() {
													cylinder(center = true, h = 2, r = 10.0000000000);
													cylinder(center = true, h = 3, r = 8.0000000000);
												}
											}
										}
										translate(v = [-18.0000000000, 0, 0]) {
											rotate(a = [0, 90, 0]) {
												difference() {
													cylinder(center = true, h = 2, r = 10.0000000000);
													cylinder(center = true, h = 3, r = 8.0000000000);
												}
											}
										}
									}
								}
								rotate(a = [90, 0, 0]) {
									cylinder(center = true, h = 20, r = 3.0000000000);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-2.0000000000, 0, 8]) {
			union() {
				translate(v = [0, -10.0000000000, 0]) {
					difference() {
						intersection() {
							hull() {
								sphere(r = 8);
								translate(v = [-24, 0, 0]) {
									sphere(r = 8);
								}
							}
							cube(center = true, size = [48, 16, 16]);
						}
						translate(v = [-6.0000000000, 0, 0]) {
							rotate(a = [0, 90, 0]) {
								difference() {
									cylinder(center = true, h = 2, r = 9);
									cylinder(center = true, h = 3, r = 7);
								}
							}
						}
						translate(v = [-18.0000000000, 0, 0]) {
							rotate(a = [0, 90, 0]) {
								difference() {
									cylinder(center = true, h = 2, r = 9);
									cylinder(center = true, h = 3, r = 7);
								}
							}
						}
					}
				}
				translate(v = [0, 10.0000000000, 0]) {
					difference() {
						intersection() {
							hull() {
								sphere(r = 8);
								translate(v = [-24, 0, 0]) {
									sphere(r = 8);
								}
							}
							cube(center = true, size = [48, 16, 16]);
						}
						translate(v = [-6.0000000000, 0, 0]) {
							rotate(a = [0, 90, 0]) {
								difference() {
									cylinder(center = true, h = 2, r = 9);
									cylinder(center = true, h = 3, r = 7);
								}
							}
						}
						translate(v = [-18.0000000000, 0, 0]) {
							rotate(a = [0, 90, 0]) {
								difference() {
									cylinder(center = true, h = 2, r = 9);
									cylinder(center = true, h = 3, r = 7);
								}
							}
						}
					}
				}
				rotate(a = [90, 0, 0]) {
					cylinder(center = true, h = 20, r = 2);
				}
			}
		}
		translate(v = [32.0000000000, 0, 8]) {
			rotate(a = [0, 0, 180]) {
				union() {
					translate(v = [0, -10.0000000000, 0]) {
						difference() {
							intersection() {
								hull() {
									sphere(r = 8);
									translate(v = [-24, 0, 0]) {
										sphere(r = 8);
									}
								}
								cube(center = true, size = [48, 16, 16]);
							}
							translate(v = [-6.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 9);
										cylinder(center = true, h = 3, r = 7);
									}
								}
							}
							translate(v = [-18.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 9);
										cylinder(center = true, h = 3, r = 7);
									}
								}
							}
						}
					}
					translate(v = [0, 10.0000000000, 0]) {
						difference() {
							intersection() {
								hull() {
									sphere(r = 8);
									translate(v = [-24, 0, 0]) {
										sphere(r = 8);
									}
								}
								cube(center = true, size = [48, 16, 16]);
							}
							translate(v = [-6.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 9);
										cylinder(center = true, h = 3, r = 7);
									}
								}
							}
							translate(v = [-18.0000000000, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									difference() {
										cylinder(center = true, h = 2, r = 9);
										cylinder(center = true, h = 3, r = 7);
									}
								}
							}
						}
					}
					rotate(a = [90, 0, 0]) {
						cylinder(center = true, h = 20, r = 2);
					}
				}
			}
		}
	}
	translate(v = [0, 0, 502]) {
		cube(center = true, size = [1000, 1000, 1000]);
	}
}
