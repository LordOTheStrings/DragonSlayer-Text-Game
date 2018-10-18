import controlP5.*; // imports ControlP5 library 

ControlP5 cp5; // gives a name to ControlP5

PShape shield_and_sword; // sets a name to class PShape

PShape chalice;

PShape sword;

PShape magicstaff;

//String text;

//String intro;

//String torch;

//String corridor;

//String nocomprende;

void setup() {
  size(800, 800); // gives size of code window
  background(0); // sets background color
  
  shield_and_sword = loadShape("TitleIcon.svg"); // loads svg "shield"
  
  chalice = loadShape("ChaliceIcon.svg"); // loads svg "chalice"
  sword = loadShape("SwordIcon.svg"); // loads svg "sword"
  magicstaff = loadShape("StaffIcon.svg"); // loads svg "staff"
  
  cp5 = new ControlP5(this); // initialized cp5 as a new ControlP5 instance

  cp5.addTextfield("Input").setPosition(315, 400).setSize(150, 25).setAutoClear(false); // adds textfield for player input

  cp5.addBang("Submit").setPosition(415, 400).setSize(50, 25); // adds a submit button
  
  //String intro = ("> You are standing in a dark, cubular cobblestone room, lit only by a single torch. To your north is a dark corridor, seemingly going on into nothingness.");
  //PFont i1 = createFont("sourceLight", 16); 
  //textFont(i1);
  //text(intro, 85, 480, 650, 200); 
}


void draw() {

  String s = ("DragonSlayer: Apparitions of Karnoth"); // creates title
  PFont f = createFont("Georgia Bold", 32); // sets font and size of title
  textFont(f); // sets PFont variable to "f"
  text(s, 75, 325); // sets position of text


  String p = ("(c) Connor Morley, IBCS, 2018, all rights reserved"); // creates copyright statement
  PFont f1 = createFont("Georgia", 14); // sets font and size of copyright statement
  textFont(f1); // sets PFont variable to "f1"
  text(p, 238, 375); // sets position of text
 
  noFill();
  rect(75, 475, 650, 200);
  stroke(255);
  
  shape(shield_and_sword, 250, 15, 275, 300); // sets position and dimensions of shield image
}

//void Submit() {
//  text = cp5.get(Textfield.class, "Input").getText();
//if (text.equals("go north")) {
//      String corridor = ("> You enter the corridor. It's pitch black!"); 
//      PFont f2 = createFont("arial", 16); 
//      fill(255);
//      textFont(f2); 
//      text(corridor, 85, 535, 650, 200); 
//  } else {
//        String nocomprende = ("> I don't understand your command.");
//        PFont f3 = createFont("sourceLight", 16); 
//        textFont(f3); 
//        fill(255);
//        text(nocomprende, 85, 550, 650, 200);      
// }
