void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
 for (int y=1000; y>=-50; y-=80){
  for (int x=0; x<=1000; x+=50){
    if (shift == true)
      scale(x, y);
    else
      scale(x-25, y);
  }
  if (shift == true)
    shift = false;
  else
    shift = true;
}
}
void scale(int x, int y) {
//declaring and initiliazing some variables for gradient loops
int diam = 0;
int rectHeight = 0;
//setting up random color selection for rgb (int from 0-255)
int r = (int)(Math.random() * 256);
int g = (int)(Math.random() * 256);
int b = (int)(Math.random() * 256);
noFill();
//creates gradient for rectangle
while(rectHeight < 80){
  stroke(r,g,b);
  rect(x+1, y+1 , 50, rectHeight);
  rectHeight++;
  r+=255/60.0;
}
//creates gradient for ellipse
while(diam < 50){
  stroke(r,g,b);
  ellipse(x+25, y+75 , diam ,diam);
  diam++;
  r+=255/30.0;
}
//Creates criss cross on top of scales
stroke(0, 0, 0, 80);
noFill();
beginShape();
curveVertex(x+50, y+0);
curveVertex(x+50, y+0);
curveVertex(x+1, y+20);
curveVertex(x+50, y+40);
curveVertex(x+1, y+60);
curveVertex(x+50, y+80);
curveVertex(x+25 , y+100);
curveVertex(x+25 , y+100);
endShape();

beginShape();
curveVertex(x+1, y+0);
curveVertex(x+1, y+0);
curveVertex(x+50, y+20);
curveVertex(x+1, y+40);
curveVertex(x+50, y+60);
curveVertex(x+1, y+80);
curveVertex(x+25 ,y+100);
curveVertex(x+25 ,y+100);
endShape();
} 
