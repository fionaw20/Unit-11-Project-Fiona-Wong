/*
Mark in Comments which feature was added.

[ no ] Feature 1 - Include mouseX and mouseY
[ no ] Feature 2 - Include keyPressed feature 
[ no ] Feature 3 - Include Custom Function 
[ no ] Feature 4 - Include Animation 
[ yes ] Feature 5 - Include Logical Operators && or ||  

*/


//more tries: 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100

//less tries: 41,62,54,12,8,36,1,71,66,44,28,95,49,77,5,83,21,10,26,17,29,35,98,14]

var BingoNum = [41,62,54,12,8,36,1,71,66,44,28,95,49,77,5,83,21,10,26,17,29,35,98,14];
var BingoLet = ["B","I","N","G","O"];
var RandNum;
var RandLet;

setup = function() {
    size(550,550);
};

var answerNum = 0;

draw = function() {
  background(255,255,255);

  fill(255,255,255);
  stroke(0,0,0);
  rect(28,100,300,400);
  line(150,102,150,501); // vertical line 2
  line(210,102,210,500); //vertical line 3
  line(90,101,90,500); //vertical  line 1
  line(267,101,269,502);//vertical line 4 

  line(28,420,327,420); //hori line 4
  line(28,340,327,340); //hori line 3
  line(28,260,327,260); //hori line 2
  line(29,180,327,180); //hori line 1 


  if (RandLet=="B") {
    fill(3,19,252);       //blue bingo ball
     ellipse(436,163,125,125);
    fill(255,255,255);
    ellipse(436,177,85,85);
  }

  if(RandLet=="I") {
    fill(255,238,5);
    ellipse(436,163,125,125);   //yellow bingo ball
    fill(255,255,255);
    ellipse(436,177,85,85);
  }

  if(RandLet=="N") {
  fill(153,0,255);
    ellipse(436,163,125,125);   //purple bingo ball
    fill(255,255,255);
    ellipse(436,177,85,85);
  }


  if(RandLet=="G") {
   fill(0,255,26);
    ellipse(436,163,125,125);   //green bingo ball
    fill(255,255,255);
    ellipse(436,177,85,85);
  }

  if(RandLet=="O") {
    fill(255,149,0);
    ellipse(436,163,125,125);   //orange bingo ball
    fill(255,255,255);
    ellipse(436,177,85,85);
  }


  textSize(33);
  fill(0,0,0); //bingo ball mechanics
  text(RandNum,420,200);
  text(5);
  text(RandLet,424,164);

  //lettering
  textSize(30);
  fill(0,0,0);
  textFont(createFont ("Comic Sans MS"));
   fill(3,19,252);
  text("B",50,80);
   fill(255,238,5);
  text("I",110,80);
  fill(153,0,255);
  text("N", 165,80); //heading
   fill(0,255,26);
  text("G",230,80);
   fill(255,149,0);
  text("O",285,80);

  //directions
  textSize(24);
  fill(255, 17, 0);
  text("DIRECTIONS:",362,275);
  textSize(20);
  fill(0,0,0);
  text("Click the screen to",354,306);
   text("generate the bingo",354,331);
  text("ball display!",393,359);
  text("Continue clicking",365,394);
  text("until you get a...",373,419);
   textSize(30);
  fill(3,19,252);
  text("B",358,466);
  fill(255,238,5);
  text("I",394,466);
  fill(153,0,255);
  text("N",426,466);
   fill(0,255,26);
  text("G",468,466);
  fill(255,149,0);
  text("O",502,466);
  fill(255, 17, 0);
  text("_________",359,480);
  textSize(20);
  text("Race with a friend or play solo!",35,531);

  
  
  textSize(15);
  fill(153,0,255);
  text("FREE",161,295); //free space
  text("SPACE",157,311);
  fill(153,0,255);
  ellipse(181,301,20,20); //purple dot for free space

  fill(0,0,0);
  textSize(30);
  text("28",161,155);
  text("5",230,155);
  text("17",281,155); //1st row
  text("36",103,155);
  text("41",44,155);
  
  text("62",42,233);
  text("1",113,233);
  text("95",163,233); //2nd row
  text("83",222,233);
  text("29",282,233);

  text("54",42,314);
  text("71",108,314);
  text("21",222,314); //3rd row
  text("35",282,314);
    
  text("12",45,390);
  text("66",102,390);
  text("49",163,390); //4th row
  text("10",222,390);
  text("98",282,390);

  text("8",49,470);
  text("44",102,470);
  text("77",163,470); //5th row
  text("26",222,470);
  text("14",282,470);

  drawCircles();
  
 
};

var CircleX = [];
var CircleY = [];
var CircleColor = [];

var drawCircles = function(){
  for(var i = 0; i < CircleX.length; i++ ){
    fill(CircleColor[i]);
    ellipse(CircleX[i], CircleY[i],20,20);
  }

  
}
mouseClicked = function(){

  var myText = "x: " + mouseX + "\ny: " + mouseY;
    console.log(myText);

  var RandNumIndex = round(random(0,BingoNum.length -1));
  var RandBingoIndex = round(random(0,BingoLet.length -1));

  RandNum = BingoNum[RandNumIndex];
  RandLet = BingoLet[RandBingoIndex];

  //RandNum = 62;
  //RandLet = "B";

  
  if (RandNum == 41 && RandLet == "B"){
    CircleColor.push(color(3,19,252));
    CircleX.push(58);
    CircleY.push(141);

  //   fill(3, 19, 252);
  // ellipse(58,141,20,20);
  };

  //Use RandNum and RandLet
  //Follow Above .push commands
  //Can explain more during class :)
  
  if (RandNum == 62 && RandLet == "B"){
    CircleColor.push(color(3,19,252));
    CircleX.push(58);
    CircleY.push(220);
  };

  if (RandNum == 54 && RandLet == "B"){
    CircleColor.push(color(3,19,252));
     CircleX.push(58);
     CircleY.push(304);
  };

  if (RandNum == 12 && RandLet == "B"){
    CircleColor.push(color(3,19,252));
    CircleX.push(58);
     CircleY.push(387);
 
  };

  if (RandNum == 8 && RandLet == "B"){
    CircleColor.push(color(3,19,252));
    CircleX.push(58);
     CircleY.push(464);
 
  };

  if (RandNum == 36 && RandLet == "I"){
    CircleColor.push(color(255,238,5));
    CircleX.push(122);
     CircleY.push(146);
  };

  if (RandNum == 1 && RandLet == "I"){
     CircleColor.push(color(255,238,5));
    CircleX.push(122);
     CircleY.push(220);
  
  };

  if (RandNum == 71 && RandLet == "I"){
     CircleColor.push(color(255,238,5));
    CircleX.push(122);
     CircleY.push(303);
 
  };

  if (RandNum == 66 && RandLet == "I"){
     CircleColor.push(color(255,238,5));
    CircleX.push(122);
     CircleY.push(386);

  };

  if (RandNum == 44 && RandLet == "I"){
     CircleColor.push(color(255,238,5));
    CircleX.push(122);
     CircleY.push(461);
  
  };

  
  if (RandNum == 28 && RandLet == "N"){
     CircleColor.push(color(153,0,255));
    CircleX.push(181);
     CircleY.push(147);
  
  };


  if (RandNum == 95 && RandLet == "N"){
    CircleColor.push(color(153,0,255));
    CircleX.push(181);
     CircleY.push(221);
  
  };

  if (RandNum == 49 && RandLet == "N"){
    CircleColor.push(color(153,0,255));
    CircleX.push(181);
     CircleY.push(388);
 
  };

  if (RandNum == 77 && RandLet == "N"){
    CircleColor.push(color(153,0,255));
    CircleX.push(181);
     CircleY.push(463);

  };


  if (RandNum == 5 && RandLet == "G"){
    CircleColor.push(color(0,255,26));
    CircleX.push(240);
     CircleY.push(144);
 
  };

  if (RandNum == 83 && RandLet == "G"){
    CircleColor.push(color(0,255,26));
    CircleX.push(240);
     CircleY.push(226);
  
  };

  if (RandNum == 21 && RandLet == "G"){
    CircleColor.push(color(0,255,26));
    CircleX.push(240);
     CircleY.push(309);
  
  };

  if (RandNum == 10 && RandLet == "G"){
    CircleColor.push(color(0,255,26));
    CircleX.push(240);
     CircleY.push(387);

  };

  if (RandNum == 26 && RandLet == "G"){
    CircleColor.push(color(0,255,26));
    CircleX.push(240);
     CircleY.push(465);
 
  };

  if (RandNum == 17 && RandLet == "O"){
    CircleColor.push(color(255,149,0));
    CircleX.push(297);
     CircleY.push(146);
 
  };

  if (RandNum == 29 && RandLet == "O"){
     CircleColor.push(color(255,149,0));
    CircleX.push(297);
     CircleY.push(227);

  };
  
  if (RandNum == 35 && RandLet == "O"){
     CircleColor.push(color(255,149,0));
    CircleX.push(297);
     CircleY.push(303);
  };

  if (RandNum == 98 && RandLet == "O"){
     CircleColor.push(color(255,149,0));
    CircleX.push(297);
     CircleY.push(382);

  };

  if (RandNum == 14 && RandLet == "O"){
     CircleColor.push(color(255,149,0));
    CircleX.push(297);
     CircleY.push(467);
 
  };













  
  

};
