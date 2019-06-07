void setup() {
  size(640, 360, P3D); 
  background(0);
 }
int space=70;
int hormove=0;
float fev=0;
float xpos=-500;
float zpos=0;
void draw() {
  lights();
  background(0);
  pushMatrix();
  if(keyPressed) {
    if (key == 's' || key == 'S') {
      xpos-=4;
    }
    if (key == 'a' || key == 'A') {
      zpos+=4;
    }
    if (key == 'w' || key == 'W') {
      xpos+=4;
    }
    if (key == 'D' || key == 'd') {
      zpos-=4;
    } }
  if(mouseX<(width/2)-200) {
    hormove-=1;
  }
  if(mouseX>(width/2)+200) {
    hormove+=1;
  }
  translate(zpos,0,xpos);
  rotateY(radians(hormove));
  for(float x=0;x<width;x+=space) {
    for(float z=0;z<(200);z+=space) {
      for(float y=0;y<height+1;y+=height) {
        pushMatrix();
        translate(x,y,z);
        noStroke();
        fill(255);
        box(space);
        popMatrix();
      }}}
  popMatrix();
  println(xpos);
}
