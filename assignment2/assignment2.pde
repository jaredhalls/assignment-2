

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
  float x = 0;
  float y = 0;
  int z = 400;
  float l = 0;
  float m = 0;
  float k = 0;
  float o = 0;
  float g = 0;

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
  float x = 0;
  float y = 0;

  x += .1;
  y += 5;
  fill(x % 255, y % 255, 100);
  ellipse(x, y, 50, 50);
  if (y == 850) {
    y = 0;
    x += 20;
  }
}

void ex6() {
}

void ex7() {
  int x = 10;
  int y = 10;
  colorMode(HSB);

  x = 0;
  for ( x = 0; x <= 500; x += 10) {
    x += 15;
    fill(x % 200, y, 201);
    y = 5;
    for ( y = 0; y<= 300; y += 10) {
      y += 15;
      ellipse(x, y, 23, 23);
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
  int [] lines = new int [50];
  int z = 0;

  for (int i = 0; i < lines.length; i++) {
    lines[i] = int(random(1, 400));
    z += 2;
    if (lines[i] >= 200) {
      fill(0);
      line(z, 400, z, lines[i]);
    } else if (lines[i]<200) {
      fill(0);
      line(z, 0, z, lines[i]);
    }
  }
}

void ex10() {
  String sentence = "The Quick Brown Fox jumps over the Lazy Dog.";
  String[] sentenceArray = new String[sentence.length()];
  int capsNum = 0, vowelsNum = 0, letterRoof = 0, punctuationNum = 0, wordsNum = 0, index = 0;

  sentence = "The Quick, Brown Fox jumps over the Lazy Dog.";

  text("The sentence is - " + sentence, 50, 50);

  text("The sentence is " + sentence.length() + " letters long.", 50, 100); //displays number of letters


  for (int i = 0; i < sentence.length(); i ++) {
    char c = sentence.charAt(i);
    if (c >= 'A' && c <='Z') {
      capsNum++;
    }
  }
  text("Number of caps - " + capsNum, 50, 150);

  for (int i = 0; i < sentence.length(); i++) {
    char c = sentence.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U') {
      vowelsNum++;
    }
  }
  text("Number of vowels - " + vowelsNum, 50, 200);

  for (int i = 0; i < sentence.length(); i++);
  {
    String[] list = split(sentence, ' ');
    wordsNum = list.length;
  }
  text("Number of words - " + wordsNum, 50, 250);

  for (int i = 0; i < sentence.length(); i++) {
    char c = sentence.charAt(i);
    if (c == ';' || c == ':' || c == '.' || c == ',' || c == '?' || c == '!') {
      punctuationNum++;
    }
  }
  text("Number of punctuations - " + punctuationNum, 50, 300);

  char[] lowArray = sentence.toLowerCase().toCharArray();
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
}