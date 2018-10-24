import controlP5.*; // imports ControlP5 library 
ControlP5 cp5; // gives a name to ControlP5

int count = 0;
int text_file_length = 0;
PFont[] font = new PFont[100]; // add more to the array as needed
boolean[] check = new boolean [100];

//int m = millis();

String text;

void setup(){
  size (800,800);
   cp5 = new ControlP5(this); // initialized cp5 as a new ControlP5 instance
   cp5.addTextfield("Input").setPosition(315, 400).setSize(150, 25).setAutoClear(false); // adds textfield for player input
   cp5.addBang("Submit").setPosition(415, 400).setSize(50, 25); // adds a submit button
  
  
  // used this to create your font
  for (int i = 0; i < font.length; i ++){
   // set up the font
   font[i] = createFont("Arial", 16, true); // Arial, 16 point, anti-aliasing on
   check[i] = true;
  }
  
}

void draw(){
  background(0);
  
  String s = ("DragonSlayer: Apparitions of Karnoth"); // creates title
  PFont f = createFont("Georgia Bold", 32); // sets font and size of title
  textFont(f); // sets PFont variable to "f"
  text(s, 75, 325); // sets position of text
  
  String p = ("(c) Connor Morley, IBCS, 2018, all rights reserved"); // creates copyright statement
  PFont f1 = createFont("Georgia", 14); // sets font and size of copyright statement
  textFont(f1); // sets PFont variable to "f1"
  text(p, 238, 375); // sets position of text
  
  textFont(font[1],32);                  
  fill(255);    
  line_load();
}

void line_load(){
  // loads txt file
  String[] lines = loadStrings("Text_Adventure_Game_Strings.txt");
  text_file_length = lines.length;
   
  // this is where the font size can be changed
  textSize(12);
  // this is where the line is called and where the text box is defined
  //text((lines[count]),width/4, height/4, width/2,  height/2);
  text((lines[count]), 75, 485, 650, 50);
  noFill();
  rect(75, 475, 650, 50);
  stroke(255); 
}


void Submit() {
  
// Room 1: The Lone Torch

text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("take torch") && check[0] == true) { 
      count = 2;
      check[2] = false;
 }
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("go north") && check[2] == false) { 
      count = 3;
      check[1] = false;
 }
  text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("go north") && check[1] == true) { 
      count = 1;
      check[2] = true;
 }
  text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("go back") && check[2] == true) { 
      count = 0;
      check[1] = true;
 }
 
// Room Two: Hobgoblin Hall

 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("investigate portraits") && check[1] == false) { 
      count = 4;
      check[3] = false;
 }
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("descend staircase") && check[2] == false) { 
      count = 14;
      check[6] = false;
 } 
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("go back") && check[6] == false) { 
      count = 3;
      check[3] = false;
 }
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("burn portrait") && check[3] == false) { 
      count = 5;
      check[4] = false;
 }
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("throw torch at hobgoblin") && check[4] == false) {
      count = 6;
      check[5] = false;
 }
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("pick up weapon") && check[5] == false) {
      count = 7;
      check[6] = false;
 }
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("descend staircase") && check[6] == false) {
      count = 8;
      check[7] = false;
 }
 
 // Room Three: Manticore Manor
 
 text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("investigate statue") && check[7] == false) {
      count = 9;
      check[8] = false;
 }
  text = cp5.get(Textfield.class, "Input").getText();
     if (text.equals("search room") && check[7] == false) {
      count = 10;
      check[9] = false; 
 }   
      
      
      
      
      
      
      
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("squash beetle")) {
//      check[12] = true;
//      count = 13;
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("squash another beetle")) {
//      check[13] = true;
//      count = 14;
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("squash again")) {
//      check[14] = true;
//      count = 15;
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("talk to creature")) {
//      check[15] = true;
//      count = 16;
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("draw sword")) {
//      check[16] = true;
//      count = 17;
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("attack creature")) {
//      check[17] = true;
//      count = 18;
// }
// text = cp5.get(Textfield.class, "Input").getText();
//    if (text.equals("run away")) {
//       check[18] = true;
//       count = 19;
// }
//}
 }
