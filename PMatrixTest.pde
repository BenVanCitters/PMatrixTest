void setup(){
  size(100,100,P3D);  
}

void draw(){
  background(0);
  noFill();  stroke(255);
  pushMatrix();
  translate(width/2,height/2);
  rotateX(millis()/2000.f);
  PMatrix3D pMat = new PMatrix3D();
  getMatrix(pMat);
  ellipse(0,0,50,50);
  popMatrix(); 
  
  fill(255,0,0);  noStroke();
  pushMatrix();
  applyMatrix(pMat);
  ellipse(0,0,50,50);
  popMatrix();
}
