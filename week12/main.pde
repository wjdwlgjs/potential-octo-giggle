laptop a;
macbook b;

void setup() {
    size(1920, 1080);
    a = new laptop(300, 1200, 500);
    b = new macbook(300, 500, 500);
}

void draw() {
    background(0, 0, 0);
    a.render();
    b.render();
}
