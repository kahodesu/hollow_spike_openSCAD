//Kaho Abe for Costumes as Game Controllers
//http://kahoabe.net
//To make hollow spikes for costumes, and to put LEDs/Neopixels inside. 

//These are the values you can change
coneH = 100; //cone height
coneR = 20; //cone radius
baseH = 1; //height of base
baseS = 50; //size of base along x,y
diff = 1; //difference between outside and inside along z
       
       
difference(){ //draws spike and hollows out spike

        translate([0,0,coneH/2+baseH]) cylinder(h = coneH, r1 = coneR, r2 = 1, center = true); 
       
        translate([0,0,coneH/2+baseH-diff]) cylinder(h = coneH, r1 = coneR, r2 = 1, center = true); 
 
}
difference(){ //draws base and opens base to inside of spike

translate([0,0,baseH/2]) cube(size = [coneR+30,coneR+30,baseH], center = true);
     translate([0,0,0]) cylinder(h = 4.001, r1 = (coneH-baseH) * (coneR/coneH), r2 = (coneH-baseH) * (coneR/coneH), center = true);  
}
 echo(version=version());


