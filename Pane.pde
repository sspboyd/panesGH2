class Pane {
  float x, y;
  float w, h;
  color col;
  float transp = 50;

  void render() {
    color(col);
    fill(col,transp);
    noStroke();
    pushMatrix();
    translate(width/2, 0);
    triangle(x, y, x+h, y+h/2, x+h, y-h/2);
    triangle(-x, y, -x-h, y+h/2, -x-h, y-h/2);
    
    popMatrix();
  }
}
