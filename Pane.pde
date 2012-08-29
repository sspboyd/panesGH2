class Pane {
  PVector pLoc;
  // float x, y;
  float w,h;
  color col;
  float transp = 50;

  void render() {
    color(col);
    fill(col,transp);
    noStroke();
    pushMatrix();
    translate(width/2, 0);
    triangle(pLoc.x, pLoc.y, pLoc.x+h, pLoc.y+h/2, pLoc.x+h, pLoc.y-h/2);
    triangle(-pLoc.x, pLoc.y, -pLoc.x-h, pLoc.y+h/2, -pLoc.x-h, pLoc.y-h/2);
    
    popMatrix();
  }
}
