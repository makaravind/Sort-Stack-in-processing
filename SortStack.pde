PFont f;
mStack stackA;
mStack stackB;
void setup() {
  size(640, 360);
  
  // Create the font
  f = createFont("Georgia", 24);
  textFont(f);
  textAlign(CENTER, CENTER);
  stackA = new mStack("A", color(69,202,232), 10);
  stackB = new mStack("B", color(243,208,40), -70);
  stackA.mPush(1);
  stackA.mPush(4);
  stackA.mPush(2);
  stackA.mPush(5);
  stackA.mPush(3);
}

void draw() {
  background(51);
  translate(width/6, height/2);
  rotate(radians(-90));
  delay(4000);
  
  stackA.display();
  stackB.display();
  
  if(!this.stackA.mIsEmpty()) {
    sort();
  }
  else{
    System.out.println("algo done!");
    noLoop();
  }
}

void sort() {
    int tmp = stackA.mPop(); 
    while( !stackB.mIsEmpty() && stackB.mPeek() > tmp ) 
    {
      stackA.mPush(stackB.mPop());
    }
    stackB.mPush(tmp); 
}