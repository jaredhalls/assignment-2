//ex4 variables
float x = 0;
float y = 0;
int z = 400;
float l = 0;
float m = 0;
float k = 0;
float o = 0;
float g = 0;
//ex5 variables
float x5 = 0;
float y5 = 0;
//ex6 variables
float x6;
float y6;
//ex7 variables
int x7 = 10;
int y7 = 10;
//ex8 variables not applicable
//ex9 variables
int [] lines = new int [50];
int z9 = 0;
//ex10+11 variables
String sentence10 = "The Quick Brown Fox jumps over the Lazy Dog.";
String[] sentenceArray = new String[sentence10.length()];
int capsNum, vowelsNum, letterRoof, punctuationNum, wordsNum, index;
//ex12 variables
String[] sentence;
String text;
int decision, capsNum12, vowelsNum12, letterMax, punctuationNum12, wordCount, index12;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  buttons();
}

void buttons() {
  fill(255);
  rect(-1, 775, 75, 25);
  rect(-1+75, 775, 75, 25);
  rect(-1+150, 775, 75, 25);
  rect(-1+225, 775, 75, 25);
  rect(-1, 750, 75, 25);
  rect(-1+75, 750, 75, 25);
  rect(-1+150, 750, 75, 25);
  rect(-1+225, 750, 75, 25);
  rect(-1, 725, 75, 25);
  rect(-1+75, 725, 75, 25);
  rect(-1+150, 725, 75, 25);
  rect(-1+225, 725, 75, 25);
  //overlays text on the buttons
  fill(0);
  text("Exercise 1", -1+2, 775+20);
  text("Exercise 2", -1+77, 775+20);
  text("Exercise 3", -1+152, 775+20);
  text("Exercise 4", -1+227, 775+20);
  text("Exercise 5", -1+2, 750+20);
  text("Exercise 6", -1+77, 750+20);
  text("Exercise 7", -1+152, 750+20);
  text("Exercise 8", -1+227, 750+20);
  text("Exercise 9", -1+2, 725+20);
  text("Exercise 10", -1+77, 725+20);
  text("Exercise 11", -1+152, 725+20);
  text("Exercise 12", -1+227, 725+20);
}

void ex1() {
  size(800, 600);
  //background
  background(135, 206, 250);
  textSize(32);
  fill(255, 255, 0);
  text("I tried", 100, 300); 

  //sun
  fill(255, 255, 0);
  ellipse(200, 350, 75, 75);
  //ground
  fill(28, 234, 92);
  rect(0, 350, 800, 350);
  //house
  fill(205, 92, 92);
  rect(500, 290, 150, 125);
  //door
  fill(190, 190, 190);
  rect(515, 350, 30, 60);
  //roof
  fill(0, 0, 0);
  triangle(490, 290, 660, 290, 575, 250);
  //doorknob
  fill(0, 0, 0);
  ellipse(520, 380, 5, 5);
  //too many lines
  line(200, 280, 200, 312);
  line(190, 290, 180, 300);
  line(210, 260, 220, 312);
  line(220, 250, 220, 312);
}

void ex2() {
  noFill();
  strokeWeight(8);
  stroke(79, 200, 45);
  arc(300, 400, 600, 600, PI, PI+HALF_PI);
  strokeWeight(12);
  stroke(255, 23, 142);
  arc(340, 390, 600, 600, PI, PI+HALF_PI);
  strokeWeight(10);
  stroke(51, 10, 90);
  arc(310, 450, 600, 600, PI, PI+HALF_PI);
  strokeWeight(11);
  stroke(0, 121, 255);
  arc(380, 425, 600, 600, PI, PI+HALF_PI);
  strokeWeight(8);
  stroke(153, 92, 53);
  arc(250, 325, 600, 600, 0, PI-HALF_PI);
  strokeWeight(12);
  stroke(42, 220, 165);
  arc(220, 315, 600, 600, 0, PI-HALF_PI);
  strokeWeight(10);
  stroke(22, 22, 255);
  arc(245, 350, 600, 600, 0, PI-HALF_PI);
  strokeWeight(11);
  stroke(52, 89, 12);
  arc(200, 300, 600, 600, 0, PI-HALF_PI);
}

void ex3() {
  fill(mouseX, 255, mouseY);
  ellipse(mouseX, mouseY, 50, 50);
}

void ex4() {
  noStroke();
  colorMode(HSB, 240, 150, 50);

  x += 0.5;
  y += 0.3;
  z += .3; 
  l += 2;
  m += .2;
  k += .2;
  o += 3;
  g += 1;  

  fill(o % 255, g % 255, 100);
  //fill(255,255,255);
  ellipse(x, z, y, y);
  //fill (255,255, 255);
  ellipse(300, l, m, k);
}


void ex5() {
  x5 += .1;
  y5 += 5;
  fill(x5 % 255, y5 % 255, 100);
  ellipse(x5, y5, 50, 50);
  if (y5 == 850) {
    y5 = 0;
    x5 += 20;
  }
}

void ex6() {
  size(400, 600);
  background(255);
  colorMode(HSB, 255, 255, 255);

  x6 = 0;
  while (x<=400) {
    x6 += 15;
    y6 = 0;
    while (y<=600) {
      y6 += 15;
      if (x < mouseX && y < mouseY) {
        fill(x6 % 200, y6, 201);
        ellipse(x6, y6, 15, 15);
      } else {
        fill(255);
        stroke(255);
        ellipse(x6, y6, 15, 15);
      }
    }
  }
}


void ex7() {
  colorMode(HSB);

  x7 = 0;
  for ( x7 = 0; x7 <= 500; x7 += 10) {
    x += 15;
    fill(x7 % 200, y7, 201);
    y = 5;
    for (y7 = 0; y7<= 300; y7 += 10) {
      y7 += 15;
      ellipse(x7, y7, 23, 23);
    }
  }
  for (int z = 300; z > 0; z--) {
    noStroke();
    fill(100 + z % 255, z % 255, 255);
    ellipse(200, 500, z, z);
  }
}

void ex8() {
  //not applicable
}

void ex9() {
  for (int i = 0; i < lines.length; i++) {
    lines[i] = int(random(1, 400));
    z9 += 2;
    if (lines[i] >= 200) {
      fill(0);
      line(z9, 400, z9, lines[i]);
    } else if (lines[i]<200) {
      fill(0);
      line(z9, 0, z9, lines[i]);
    }
  }
}

void ex10() {
  background(0);
  sentence10 = "The Quick, Brown Fox jumps over the Lazy Dog.";
  stringLength(); //length of sentence
  caps(); //number of capitals
  vowels10(); //number of vowels
  words(); //word count
  punctuation10(); //number of punctuation marks
  letterUse10(); //most used letter
  text("The sentence is - " + sentence, 50, 50);
}

void stringLength() {
  text("The sentence is " + sentence10.length() + " letters long.", 50, 100); //displays number of letters
}

void caps() {
  for (int i = 0; i < sentence10.length(); i ++) {
    char c = sentence10.charAt(i);
    if (c >= 'A' && c <='Z') {
      capsNum++;
    }
  }
  text("Number of caps - " + capsNum, 50, 150);
}

void vowels10() {
  for (int i = 0; i < sentence10.length(); i++) {
    char c = sentence10.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U') {
      vowelsNum++;
    }
  }
  text("Number of vowels - " + vowelsNum, 50, 200);
}

void words() {
  for (int i = 0; i < sentence10.length(); i++);
  {
    String[] list = split(sentence10, ' ');
    wordsNum = list.length;
  }
  text("Number of words - " + wordsNum, 50, 250);
}

void punctuation10() {
  for (int i = 0; i < sentence10.length(); i++) {
    char c = sentence10.charAt(i);
    if (c == ';' || c == ':' || c == '.' || c == ',' || c == '?' || c == '!') {
      punctuationNum++;
    }
  }
  text("Number of punctuations - " + punctuationNum, 50, 300);
}

void letterUse10() {
  char[] lowArray = sentence10.toLowerCase().toCharArray();
  int[] all = new int [26];
  for (int i = 0; i < lowArray.length; i++) {
    if (lowArray[i] >= 'a' && lowArray[i] <='z') {
      all[lowArray[i]- 'a']++;
    }
  }
  for (int i = 0; i <all.length; i++) {
    if (all[i] > letterRoof) {
      letterRoof = all[i];
      index = i;
    }
  }
  char letterUse = char('a' + index);
  text("Most used letter - " + letterUse, 50, 350);
}


void ex11() {
  //incorporated in ex10
}

void ex12() {
  background(0);
  size(600,600);
  fileSelect();
  vowels();
  textLength();
  letterUse();
  letterCaps();
  wordCount();
  punctuation();
}

void fileSelect(){
  int files = int(random(1,7));
  if (files == 1){
    String rep[] = loadStrings("theRepublic.txt");
    sentence = rep;
    text = join(sentence, "\n");
    text("The book is The Republic" , 50, 50);
  } else if (files == 2){
    String ham[] = loadStrings("hamlet.txt");
    sentence = ham;
    text = join(sentence, "\n");
    text("The book is Hamlet" , 50, 50);
  } else if (files == 3){
    String ill[] = loadStrings("illiad.txt");
    sentence = ill;
    text = join(sentence, "\n");
    text("The book is Illiad" , 50, 50);
  } else if (files == 4){
    String mac[] = loadStrings("macbeth.txt");
    sentence = mac;
    text = join(sentence, "\n");
    text("The book is Macbeth" , 50, 50);
  } else if (files == 5){
    String oth[] = loadStrings("othello.txt");
    sentence = oth;
    text = join(sentence, "\n");
    text("The book is Othello" , 50, 50);
  } else if (files == 6){
    String rom[] = loadStrings("romeoAndJuliet.txt");
    sentence = rom;
    text = join(sentence, "\n");
    text("The book is Romeo & Juliet" , 50, 50);
  } else if (files == 7){
    String ody[] = loadStrings("theOdyssey.txt");
    sentence = ody;
    text = join(sentence, "\n");
    text("The book is The Odyssey" , 50, 50);
  }
}

void textLength(){
  text("The sentence is " + text.length() + " letters long.", 50,100);
}

void vowels(){
    for(int i = 0; i < text.length(); i++){
    char c = text.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U'){
      vowelsNum12++;
    }
  }
  text("Number of vowels - " + vowelsNum12, 50, 200);
}

void letterUse(){
  char[] lowArray = text.toLowerCase().toCharArray();
  int[] all = new int [26];
  for(int i = 0; i < lowArray.length; i++){
    if (lowArray[i] >= 'a' && lowArray[i] <='z'){
      all[lowArray[i]- 'a']++;
    }
  }
  for(int i = 0; i <all.length; i++){
    if (all[i] > letterMax){
      letterMax = all[i];
      index12 = i;
    }
  }
  char letterUse = char('a' + index12);
  text("Most used letter - " + letterUse, 50, 350);
}

void letterCaps(){
    for(int i = 0; i < text.length(); i ++){
    char c = text.charAt(i);
    if(c >= 'A' && c <='Z'){
      capsNum12++;
    }
  }
  text("Number of caps - " + capsNum12, 50, 150);
}

void wordCount(){
    for(int i = 0; i < text.length(); i++);{
    String[] list = split(text, ' ');
    wordCount = list.length;
  }
  text("Number of words - " + wordCount, 50, 250);
}

void punctuation(){
      for(int i = 0; i < text.length(); i++){
    char c = text.charAt(i);
    if (c == ';' || c == ':' || c == '.' || c == ',' || c == '?' || c == '!'){
      punctuationNum12++;
    }
  }
  text("Number of punctuations - " + punctuationNum12, 50, 300);
}