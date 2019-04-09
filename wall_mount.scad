D=130;
leng=1500;
pipe_wall = 5;
mount_h2=100;

translate([0,0,-3]) difference(){
    union(){
        cube([500,300,3], center=true);
        cylinder(d=D+pipe_wall,h=leng);
        
    }
    translate([0,0,-2.5]) cylinder(d=D,h=leng+5);
    
    translate([-mount_h2,-mount_h2,-2.5]) cylinder(d=10,h=30);
    translate([-mount_h2,mount_h2,-2.5]) cylinder(d=10,h=30);
    translate([mount_h2,-mount_h2,-2.5]) cylinder(d=10,h=30);
    translate([mount_h2,mount_h2,-2.5]) cylinder(d=10,h=30);
}

translate([0,0,-1.5]) rotate([180,0,0]){
    translate([200,0,300/2]) cube([80,80,300],center=true);
    translate([150-80,0,300-80/2]) cube([300,80,80],center=true);
}


topmx =150;
topmy =110;
topmz =10;

//mirror
translate([0,0,-150]) rotate([45,0,0]) cube([topmx,topmy,topmz],center=true);


D=130;
leng=1500;
pipe_wall = 5;
mount_h=200;
mount_h2=100;
platexy = 500;
rotate([180,0,0]) difference(){
    union(){
        cube([platexy,platexy,3], center=true);
        //cylinder(d=D+pipe_wall,h=leng);
        //translate([0,0,-2.5]) cylinder(d=D,h=leng+5);
        translate([-mount_h2,-mount_h2,0]) cylinder(d=10,h=30);
        translate([-mount_h2,mount_h2,0]) cylinder(d=10,h=30);
        translate([mount_h2,-mount_h2,0]) cylinder(d=10,h=30);
        translate([mount_h2,mount_h2,0]) cylinder(d=10,h=30);
    }
    translate([0,0,-2.5]) cylinder(d=D,h=leng+5);
    translate([-mount_h,-mount_h,-2.5]) cylinder(d=10,h=leng+5);
    translate([-mount_h,mount_h,-2.5]) cylinder(d=10,h=leng+5);
    translate([mount_h,-mount_h,-2.5]) cylinder(d=10,h=leng+5);
    translate([mount_h,mount_h,-2.5]) cylinder(d=10,h=leng+5);
}

//translate() cube([40,40,300]);

