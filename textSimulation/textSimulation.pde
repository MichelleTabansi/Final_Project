import processing.sound.*;
  SoundFile s;
  Poem bluebird;
  int tracker=0;
  Page page1;
  Page page2;
  Page page3;
  Page page4;
  Page page5;
  Page page6;
  Page page7;
  Page page8;
  Page page9;
  Page page10;
  Page page11;
  Page page12;
  Page page13;
  Page page14;
  FadingLine last;
void setup(){ 
    size(1000,700);
    frameRate(10);
    background(0);
    bluebird = new Poem();
    last = new FadingLine(500,350, bluebird.getLine(28));
    //poem mp3
    s = new SoundFile(this, "bluebird.mp3");
    s.play();
    
    page1 = new Page(bluebird.getLine(0),bluebird.getLine(1),0,50,600,600,50);
    page2 = new Page(bluebird.getLine(2),bluebird.getLine(3),0,50,600,600,30);
    page3 = new Page(bluebird.getLine(4),bluebird.getLine(5),0,50,600,600,30);
    page4 = new Page(bluebird.getLine(6),bluebird.getLine(7),0,50,600,600,50);
    page5 = new Page(bluebird.getLine(8),bluebird.getLine(9),0,50,600,600,40);
    page6 = new Page(bluebird.getLine(10),bluebird.getLine(11),0,50,600,600,40);
    page7 = new Page(bluebird.getLine(12),bluebird.getLine(13),0,50,600,600,30);
    page8 = new Page(bluebird.getLine(14),bluebird.getLine(15),0,50,600,600,50);
    page9 = new Page(bluebird.getLine(16),bluebird.getLine(17),0,50,600,600,20);
    page10 = new Page(bluebird.getLine(18),bluebird.getLine(19),0,50,600,600,30);
    page11 = new Page(bluebird.getLine(20),bluebird.getLine(21),0,50,600,600,50);
    page12 = new Page(bluebird.getLine(22),bluebird.getLine(23),0,50,600,600,30);
    page13 = new Page(bluebird.getLine(24),bluebird.getLine(25),0,50,600,600,40);
    page14 = new Page(bluebird.getLine(26),bluebird.getLine(27),0,50,600,600,50);

}

void draw(){
   background(0);
   if(tracker>120 ){
   //firstPage();
       page1.display();
   }
   if(tracker>190 && tracker <300){
       //secondPage();
       page2.display();
   }
   if(tracker>230 && tracker <450){
     page3.display();
     //thirdPage();
   }
   if(tracker>300 && tracker <600){
     page4.display();
     //fourthPage();
   }
   if(tracker>400 && tracker <750){
     page5.display();
     //fifthPage();
   }
   if(tracker>480 && tracker <900){
     page6.display();
     //sixthPage();
   }
   if(tracker>530 && tracker <1050){
     page7.display();
     //seventhPage();
   }
   if(tracker>590 && tracker <1200){
     page8.display();
     //eighthPage();
   }
   if(tracker>670 && tracker <1350){
     page9.display();
     //ninthPage();
   }
   if(tracker>730 && tracker < 1500){
     page10.display();
     //tenthPage();
   }
   if(tracker>780 && tracker <1650){
     page11.display();
     //eleventhPage();
   }
   if(tracker>850 && tracker <1800){
     page12.display();
     //twelthPage();
   }
   if(tracker>910 && tracker <1950){
     page13.display();
     //thirteenthPage();
   }
   if(tracker>970 && tracker <2100){
     page14.display();
     //fourteenthPage();
   } 
      if(tracker>1040 && tracker <2100){
          last.display();
          last.update();
     //fourteenthPage();
   } 
   tracker++;
}
