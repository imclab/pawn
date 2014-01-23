// Change any of these!
headWidth = 50;
collarHeight = 10;
collar1Width = 80;
collar2Width = 30;
bodyHeight = 40;
bodyWidth = 40;
legHeight = 30;
baseWidth = 70;
baseHeight = 10;

// The head
sphere(headWidth/2);

// The collar-looking thing
translate([0, 0, -1*headWidth/2]) 
cylinder(h=collarHeight, r1 = collar1Width/2, r2 = 0);

translate([0, 0, -1*headWidth/2-collarHeight]) 
cylinder(h=collarHeight, r1 = collar2Width/2, r2 = collar1Width/2);

// The body-looking thing
translate([0, 0, -1*headWidth/2-collarHeight-bodyHeight]) 
cylinder(h=bodyHeight, r1= bodyWidth/2, r2= collar2Width/2);

// The leg
translate([0, 0, -1*headWidth/2-collarHeight-bodyHeight-legHeight]) 
cylinder(h=legHeight, r1= baseWidth/2, r2= bodyWidth/2);

// The base
translate([0, 0, -1*headWidth/2-collarHeight-bodyHeight-legHeight-baseHeight]) 
cylinder(h=baseHeight, r1= baseWidth/2, r2= baseWidth/2);

