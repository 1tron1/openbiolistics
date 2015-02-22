difference()
{
        for(i=[0:2])

        cylinder(r=50,h=70);

        for(i=[0:2])
        translate([0,0,-1])
        cylinder(r=40,h=72, r1=2, r2=12);
}