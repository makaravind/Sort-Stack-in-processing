import java.util.*;
class mStack {
  
  Stack<Integer> st;
  color col;
  int x;
  String name;
  
  public mStack(String name, color c, int x) {
    st = new Stack();
    this.col = c;
    this.x = x;
    this.name = name;
  }
  
  public boolean mIsEmpty() {
    return this.st.isEmpty();
  }
  
  public void mPush(int a) {
   this.st.push(a); 
  }
  
  public int mPop() {
    if(this.st.size() <= 0 ) {
     return -1; 
    }
    return this.st.pop(); 
  }
  
  public int mPeek() {
   return this.st.peek(); 
  }
  
  public void display() {
    int y = 10;
    int offset = 48;
    text(this.name, this.x, y-40);
    if(this.st.size() <= 0 ) {
     return; 
    }
    for(int obj : this.st)
    {
       System.out.println("--->" + obj);
       
      //translate(x,y);
      //rotate(PI);
      pushMatrix();
      noStroke();
       //translate(x,y);
       // rotate(HALF_PI);
       // translate(-x,-y);
        char letter = char(offset + obj);
         fill(this.col);
        ellipse(this.x,y,50,50);      
        fill(255);
        text(letter, this.x, y);
        popMatrix();
        //rotate(HALF_PI);
        
      y += 55;
    }
  }
}