laptop a;
macbook b;
samsung c;
laptop[] d;

void setup() {
    d= new laptop[4];
    size(1920, 1080);
    a = new laptop(200, 300, 100);
    b = new macbook(200, 700, 100);
    c = new samsung(200,1100,100);
    for (int i=0;i<2;i++){
      d[i]=new macbook(100,300+i*400,400);
      d[i+2]=new samsung(100,300+i*400,600);
    }
}

void draw() {
    background(0, 0, 0);
    a.render();
    b.render();
    c.render();
    for(int i=0;i<4;i++){
    d[i].render();
    }
}