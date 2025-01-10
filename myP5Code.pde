//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var trainX = 0;
var trainY= 145;
var cloudX=150;
var cloudY=40;
var cloudagainX= 140;
var cloudagainY=35;
var shrinkingcloudX= 2;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  //car
  strokeWeight(30);
  stroke(123,0,0);
  line(14+trainX,142,315+trainX,142);
  fill(193, 18, 31);
   strokeWeight(1);
   stroke(0,0,0);
  rect(trainX, trainY, 330, 170);
  fill(0, 48, 73);
  ellipse(36+trainX,329,50,50);
  ellipse(89+trainX,329,50,50);
  ellipse(210+trainX,329,50,50);
  ellipse(263+trainX,329,50,50);
   fill(0,0,0)
  rect(trainX,300,330,30)
 
  
 //gold
 strokeWeight(10);
  stroke(255, 196, 51);
  line(4+trainX,273,325+trainX,273);
  line(4+trainX,159,325+trainX,159);
  
  
//windows
strokeWeight(1)
stroke(255,255,255);
fill(115, 221, 255);
rect(23+trainX,170,50,80);
rect(95+trainX,170,50,80);
rect(167+trainX,170,50,80);
rect(239+trainX,170,50,80);

// clouds 
  fill(255, 255, 255);

  // left cloud
  ellipse(cloudX,cloudY, 106, 77);
  ellipse(cloudX+52,cloudY, 50, 40);
  ellipse(cloudX-52,cloudY, 50, 40);

  // right cloud
  scale(shrinkingcloudX);
  ellipse(cloudagainX, cloudagainY, 106, 77);
  ellipse(cloudagainX+62,cloudagainY, 50, 40);
  ellipse(cloudagainX-62,cloudagainY, 50, 40);
  
  cloudX-=2.5;
  cloudagainX+=2.5;
  shrinkingcloudX-=.01
  trainX = mouseX;
  Y = mouseY;
  // if(cloudX)
  
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
