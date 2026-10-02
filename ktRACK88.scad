//
// ktRACK88
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;



tube();



module tube()
{
difference()
{
    union()
    {
        BR = 2;
        $fn=100;
        minkowski()
        {
            translate([BR, BR, 0]) cube([(32+1*2)-BR*2, (21+1*2)-BR*2, 110-1]);
            cylinder(r=BR, h=1);
        }
    }
    
    BR = 2;
    $fn=100;
    translate([1, 1, 1])
    minkowski()
    {
        translate([BR, BR, 0]) cube([(32)-BR*2, (21)-BR*2, 110-1]);
        cylinder(r=BR, h=1);
    }
    
    translate([(32+1*2)/2, 0, 110]) resize([20.75, (21+1*2), 30]) rotate([0, 90, 90]) cylinder(h=1, r=1, $fn=100);
    
    #translate([(32+1*2)/2-5-9, 0, 110-4]) kado();
    #translate([(32+1*2)/2+4, 0, 110-4]) kado();
}
}
module kado()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cube([10, 50, 10]);
    }
    translate([0, 0, 0]) rotate([0, 90, 90]) cylinder(h=50, r=4, $fn=100);
    translate([10, 0, 0]) rotate([0, 90, 90]) cylinder(h=50, r=4, $fn=100);
}
}

module case2()
{
difference()
{
    union()
    {
        BR = 2;
        $fn=100;
        minkowski()
        {
            translate([BR, BR, 0]) cube([(60+1*2)-BR*2, (15+1*2)-BR*2, 105-1]);
            cylinder(r=BR, h=1);
        }
    }
    
    BR = 2;
    $fn=100;
    translate([1, 1, 1])
    minkowski()
    {
        translate([BR, BR, 0]) cube([(60)-BR*2, (15)-BR*2, 105-1]);
        cylinder(r=BR, h=1);
    }
    
    translate([(60+1*2)/2, 0, 105]) resize([20.75, (22+1*2), 30]) rotate([0, 90, 90]) cylinder(h=1, r=1, $fn=100);
    
    #translate([(60+1*2)/2-5-9, 0, 105-4]) kado();
    #translate([(60+1*2)/2+4, 0, 105-4]) kado();
}
}
module case()
{
difference()
{
    union()
    {
        BR = 5;
        $fn=100;
        minkowski()
        {
            translate([BR, BR, 0]) cube([(110+4*2)-BR*2, (63+5+6.5+1*2)-BR*2, 10-1]);
            cylinder(r=BR, h=1);
        }
    }
    translate([4, 5, 2]) cube([110, 63, 20]);
    
    translate([0, 2.5, 10/2+5/2]) rotate([0, 90, 0]) cylinder(h=130, r=3.5/2, $fn=100);
    translate([(110+4*2)/2-(25+2)/2, 0-gap1, 10/2]) cube([(25+2), 5+gap2, 20/2+gap1]);

    translate([(110+4*2)/2-6.5/2, (63+5+6.5+1*2)-20-2, 10-3.5-1]) cube([6.5, 20, 3.5]);
}
    #translate([40, 2.5, 10/2+5/2]) wa();
}
module huta()
{
difference()
{
    union()
    {
        BR = 5;
        $fn=100;
        translate([0, 0, 10+0.5])
        minkowski()
        {
            translate([BR, BR, 0]) cube([(110+4*2)-BR*2, (63+5+6.5+1*2)-BR*2, 10-1]);
            cylinder(r=BR, h=1);
        }
        translate([(110+4*2)/2-25/2, 0-gap1, 10/2+5/2]) cube([25, 5+gap2, 10/2+gap1]);
        translate([(110+4*2)/2-25/2, 5/2, 10/2+5/2]) rotate([0, 90, 0]) cylinder(h=25, r=5/2, $fn=100);
    }
    translate([4, 5, 10]) cube([110, 63, 10-2]);
    
    translate([0, 2.5, 10/2+5/2]) rotate([0, 90, 0]) cylinder(h=130, r=3.5/2, $fn=100);
    #translate([(110+4*2)/2-6.5/2, (63+5+6.5+1*2)-20-2, 10+1]) cube([6.5, 20, 3.5]);
}
}
module wa()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) rotate([0, 90, 0]) cylinder(h=1, r=5/2, $fn=100);
    }
    translate([0-gap1, 0, 0]) rotate([0, 90, 0]) cylinder(h=1+gap2, r=2/2, $fn=100);
}
}

module hasami()
{
difference()
{
    union()
    {
        translate([-10/2, 0, 0]) cube([10, 67, 67]);
    }
    #translate([6/2, 0, 2]) rotate([45, 0, 180]) cube([6, 15, 95+30]);

}
}


module bottle()
{
difference()
{
    union()
    {
        BR = 5;
        $fn=100;
        translate([-50/2, -70/2+15, -1])
        minkowski()
        {
            translate([BR, BR, 0]) cube([50-BR*2, 70-BR*2, 30+1]);
            cylinder(r=BR, h=1);
        }
    }
    #translate([0, 0, 9]) rotate([-25, 0, 0]) rotate([0, 0, 90]) cylinder(h=100, r1=41/2, r2=41/2, $fn=100);

}
}


module hook()
{
difference()
{
    union()
    {
        translate([0, 0, 9.5+3]) scale([1, 0.6, 1]) rotate([0, 0, 90]) cylinder(h=0.5, r1=60/2, r2=60/2, $fn=100);
        translate([0, 0, 9.5]) scale([1, 0.6, 1]) rotate([0, 0, 90]) cylinder(h=3, r1=40/2, r2=60/2, $fn=100);
        translate([0, 0, 0]) scale([1, 0.6, 1]) rotate([0, 180, 90]) cylinder(h=3, r1=40/2, r2=60/2, $fn=100);
        translate([0, 0, 0-3]) scale([1, 0.6, 1]) rotate([0, 180, 90]) cylinder(h=0.5, r1=60/2, r2=60/2, $fn=100);
    }
    translate([-500/2, 0, -500/2]) cube([500, 500, 500]);
}
difference()
{
    union()
    {
        translate([0, 0, -3]) scale([1, 0.6, 1]) rotate([0, 0, 90]) cylinder(h=3+9.5+3, r1=60/2, r2=60/2, $fn=100);
    }
    translate([-500/2, 0, -500/2]) cube([500, 500, 500]);
    translate([-500/2, -500-5, -500/2]) cube([500, 500, 500]);
}
}

module stand()
{
difference()
{
    union()
    {
        BR = 5;
        $fn=100;
        translate([-50/2, -60/2+10, -1])
        minkowski()
        {
            translate([BR, BR, 0]) cube([50-BR*2, 60-BR*2, 30+1]);
            cylinder(r=BR, h=1);
        }
        translate([-30/2, -60/2+10+100-10/2, 65]) rotate([0, 90, 0]) cylinder(h=30, r=10/2, $fn=100);
        translate([-30/2, -60/2+10+100-10/2+2.4, 65+4.4]) rotate([-90-75, 0, 0]) cube([30, 100, 100]);
    }
    translate([0, 0, 9]) rotate([-25, 0, 0]) rotate([0, 0, 90]) cylinder(h=100, r1=41/2, r2=41/2, $fn=100);

    translate([-500/2, -500/2, -500]) cube([500, 5000, 500]);
    translate([100/2, 40, 6]) rotate([26.5, 0, 180]) cube([100, 100, 100]);

    
    translate([100/2, 40-5+0.5, 6]) rotate([26.5, 0, 180]) cube([100, 100, 60]);
    translate([-100/2, 40-5+0.5, 6]) cube([100, 4.5, 60]);

    translate([-100/2, -25, 31]) cube([100, 20, 4.5]);
}
}


module stand2()
{
    translate([0, 0, 0]) stand();
    translate([0, 107.5, 0]) stand();
}
