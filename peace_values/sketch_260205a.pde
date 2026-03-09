//Tristan Sun
//Block 2-1

size(600,600);

//text setup
PFont cour;
cour = createFont("cour.ttf", 128);

float a, b, c;
a = HALF_PI+QUARTER_PI;
b = PI+HALF_PI;
c = PI+HALF_PI+QUARTER_PI;

noFill();
strokeWeight(100);


//red
stroke(255, 80, 80);
arc(500, -170, 300, 300, HALF_PI, a);
arc(510, 130, 300, 300, b, c);

//blue
stroke(137, 179, 255);
arc(50, -250, 300, 300, HALF_PI, a);
arc(60, 50, 300, 300, b, c);
arc(275, -160, 300, 300, HALF_PI, a);
arc(285, 140, 300, 300, b, c);
arc(500, -70, 300, 300, HALF_PI, a);
arc(510, 230, 300, 300, b, c);

//green
stroke(11, 211, 158);
arc(50, -150, 300, 300, HALF_PI, a);
arc(60, 150, 300, 300, b, c);
arc(275, -60, 300, 300, HALF_PI, a);
arc(285, 240, 300, 300, b, c);
arc(500, 30, 300, 300, HALF_PI, a);
arc(510, 330, 300, 300, b, c);

//purple
stroke(197, 122, 232);
arc(50, -50, 300, 300, HALF_PI, a);
arc(60, 250, 300, 300, b, c);
arc(275, 40, 300, 300, HALF_PI, a);
arc(285, 340, 300, 300, b, c);
arc(500, 130, 300, 300, HALF_PI, a);
arc(510, 430, 300, 300, b, c);

//gold
stroke(237, 217, 101);
arc(50, 50, 300, 300, HALF_PI, a);
arc(60, 350, 300, 300, b, c);
arc(275, 140, 300, 300, HALF_PI, a);
arc(285, 440, 300, 300, b, c);
arc(500, 230, 300, 300, HALF_PI, a);
arc(510, 530, 300, 300, b, c);

//red
stroke(255, 80, 80);
arc(50,150,300,300,HALF_PI,a);
arc(60, 450, 300, 300, b, c);
arc(275, 240, 300, 300, HALF_PI, a);
arc(285, 540, 300, 300, b, c);
arc(500, 330, 300, 300, HALF_PI, a);
arc(510, 630, 300, 300, b, c);

//blue
stroke(137, 179, 255);
arc(50,250,300,300,HALF_PI,a);
arc(60, 550, 300, 300, b, c);
arc(275, 340, 300, 300, HALF_PI, a);
arc(285, 640, 300, 300, b, c);
arc(500, 430, 300, 300, HALF_PI, a);
arc(510, 730, 300, 300, b, c);

//green
stroke(11, 211, 158);
arc(50,350,300,300,HALF_PI,a);
arc(60, 650, 300, 300, b, c);
arc(275, 440, 300, 300, HALF_PI, a);
arc(285, 740, 300, 300, b, c);
arc(500, 530, 300, 300, HALF_PI, a);
arc(510, 830, 300, 300, b, c);

//purple
stroke(197, 122, 232);
arc(50,450,300,300,HALF_PI,a);
arc(60, 750, 300, 300, b, c);

//text
fill(0);
textFont(cour);
text("peace",110,550);

//peace symbol
noFill();
stroke(0);
strokeWeight(23);
circle(300,300,300);
fill(0);
noStroke();
rect(287, 160, 23, 300);
translate(width/2, height/2);
rotate(TWO_PI/1.55);
rect(-04, -150, 23, 150);
rotate(TWO_PI/1.033);
rect(-140, -5, 150, 23);
