laptop a[] = new laptop[3];
macbook b[] = new macbook[3];
samsung c[] = new samsung[3];

void setup() {
    size(1920, 1080);
    for (int i = 0; i < 3; i++) {
        a[i] = new laptop(random(0, 300), random(300, 1620), random(300, 780));
        b[i] = new macbook(random(0, 300), random(300, 1620), random(300, 780));
        c[i] = new samsung(random(0, 300), random(300, 1620), random(300, 780));
    }
}
    

void draw() {
    background(0, 0, 0);
    for (int i = 0; i < 3; i++) {
        a[i].render();
        b[i].render();
        c[i].render();
    }
}