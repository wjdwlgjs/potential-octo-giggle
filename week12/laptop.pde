class laptop {
    float size;
    float x, y;

    laptop(float init_size, float init_x, float init_y) {
        size = init_size;
        x = init_x;
        y = init_y;
    }

    void render() {
        fill(128, 128, 128);
        rect(x, y, 1.6 * size, 0.9 * size);
    }
}

class macbook extends laptop {
    macbook(float init_size, float init_x, float init_y) {
        super(init_size, init_x, init_y);
    }

    void render() {
        super.render();
        fill(255, 255, 255);
        noStroke();
        ellipse(x + size * 0.8, y + size * 0.45, 0.29 * size, 0.3 * size);
        fill(128, 128, 128);
        ellipse(x + size * 0.92, y + size * 0.45, 0.1 * size, 0.15 * size);

        triangle(x + size * 0.75, y + size * 0.6, x + size * 0.85, y + size * 0.6, x + size * 0.8, y + size * 0.565);
        triangle(x + size * 0.75, y + size * 0.3, x + size * 0.85, y + size * 0.3, x + size * 0.8, y + size * 0.335);

        fill(255, 255, 255);
        ellipse(x + size * 0.8, y + size * 0.25, 0.04 * size, 0.08 * size);
        /* ellipse(x + size * 0.8, y + size * 0.3, 0.666 * size, 0.1 * size); */
    }
}
class samsung extends laptop{
    samsung(float init_size, float init_x, float init_y) {
        super(init_size, init_x, init_y);
    }
    
    void render() {
        super.render();
        fill(0);
        textSize(size/10);
        textAlign(CENTER, CENTER);
        text("SAMSUNG", x+0.8*size,y+0.45*size);
    }
}