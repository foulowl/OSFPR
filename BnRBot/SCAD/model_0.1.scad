//With boolean operations, we need to extend the size of the shape that is 
//doing the subtracting in order to avoid the screen door effect. 
//This is the amount that those parts are extended. 
boolean_ext=1.0;

//Parameters
output_tube_length=100;
output_tube_diameter=50;

motor_height=50;
motor_diameter=48;

hopper_diameter=200;
hopper_taper_diameter=40;
hopper_taper_height=100;
hopper_top_height=200;

burner_base_width=200;
burner_base_depth=200;
burner_base_height=20;

beans_pot_diameter=200;

//colors
output_tube_color=([1.0, 0.5, 1.0]);
burner_color=([1.0, 0.5, 0.5]);
motor_color=([1.0, 1.0, 1.0]);


//hopper


//output tube
color(output_tube_color)
translate([0, 0, 300])
rotate([90, 0, 0]) 
{
	difference()
	{		 
		cylinder(r=output_tube_diameter/2, h=output_tube_length, center=true);
		cylinder(r=24, h=output_tube_length+boolean_ext, center=true);
	}
}

//motor
color([0.5, 0.5, 1.0])
translate([0, output_tube_length/2+motor_height/2, 300])
rotate([90, 0, 0])
cylinder(r=motor_diameter/2, h=motor_height, center=true);

//burner
color([1.0, 0.2, 0.2])
translate([0, -30, 0])
{
 cube([200, 200, 10], center=true);
 translate([0, 0, 15])
 cylinder(r=100, h=20, center=true);
}

//rice cooker

