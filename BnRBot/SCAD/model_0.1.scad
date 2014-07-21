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

rice_cooker_diameter=200;
rice_cooker_height=100;

arm_rod_diameter=8;
rod_spacing=30;
arm_width=1000;

drain_diameter=50;
drain_height=100;

beans_pot_diameter=200;

front_component_distance=0;
arm_distance=250;
rear_component_distance=300;

//colors
output_tube_color=([1.0, 0.5, 1.0]);
burner_color=([1.0, 0.5, 0.5]);
motor_color=([1.0, 1.0, 1.0]);
rice_cooker_color=([1.0, 0.6, 0.6]);
drain_color=([0.2, 1.0, 0.2]);
arm_color=([0.2, 0.7, 0.7]);

////
//Rear components
////

//hopper


//output tube
color(output_tube_color)
translate([0, rear_component_distance, 300])
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
translate([0, output_tube_length/2+motor_height/2+rear_component_distance, 300])
rotate([90, 0, 0])
cylinder(r=motor_diameter/2, h=motor_height, center=true);

////
//Arm components
////
color(arm_color)
rotate([0, 90, 0])
{
	//arm rod 1
	translate([0, arm_distance, 0])
	cylinder(r=arm_rod_diameter/2, h=arm_width, center=true);
	translate([0, arm_distance+rod_spacing, 0])
	cylinder(r=arm_rod_diameter/2, h=arm_width, center=true);
}

////
//Front components
////

//burner
color(burner_color)
translate([-200, front_component_distance, 0])
{
	cube([200, 200, 10], center=true);
	translate([0, 0, 15])
	cylinder(r=100, h=20, center=true);
}

//rice cooker
color(rice_cooker_color)
translate([200, front_component_distance, 0])
{
 cylinder(r=rice_cooker_diameter/2, h=rice_cooker_height);
}

//drain
color(drain_color)
{
	cylinder(r=drain_diameter, h=drain_height);
}