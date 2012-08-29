//import processing.opengl.*;

//Declare Globals
int rSn; // randonSeed number. put into var so can be saved in file name. defaults to 47
Pane p;
ArrayList<Pane> panes = new ArrayList();


void setup() {
  background(255);
  size(800, 400);
  smooth();
  rSn = 47;
  randomSeed(rSn);

  p = new Pane();
  p.pLoc = new PVector(0,0);
  p.pLoc.x = 10; 
  p.pLoc.y = height/2;
  p.w = 150; 
  p.h = 50;

  p.col = color(180, 0, 90);
}

void draw() {
  background(255);
  stroke(0);
  line(width/2, 0, width/2, height);
  p.pLoc.x = mouseX/2-60;
  p.h = mouseY/4+50;
  p.pLoc.y = mouseY;
  p.render();
  // if (mouseX != 0 && mouseY != 0)  line(mouseX, mouseY, width/2, height/2);

  for (Pane sp : panes) {
    sp.render();
  }
}

void keyPressed() {
  if (key == 'S') screenCap();
}

void mousePressed() {
  //save current pos of pane in a new pane and store

  Pane newPane;
  newPane = new Pane();
  newPane.pLoc = new PVector(0,0);
  newPane.pLoc.x = p.pLoc.x;
  newPane.pLoc.y = p.pLoc.y;
  newPane.w = p.w;
  newPane.h = p.h;
  newPane.col = p.col;
  newPane.transp = p.transp;

  panes.add(newPane);
}







void screenCap() {
  // save functionality in here
  String outputDir = "out/";
  String sketchName = "panes-";
  String randomSeedNum = "rS" + rSn + "-";
  String dateTime = "" + year() + month() + day() + hour() + second();
  String fileType = ".tif";
  String fileName = outputDir + sketchName + randomSeedNum + dateTime + fileType;
  save(fileName);
  println("Screen shot taken and saved to " + fileName);
}

