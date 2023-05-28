class goodgun extends character {
    goodgun(float init_size, float init_x, float init_y, float init_dx, float init_dy) {
        super(init_size, init_x, init_y, init_dx, init_dy);
    }
    goodgun(float init_size, float init_x, float init_y, float keyboard_movement_speed) {
        super(init_size, init_x, init_y, keyboard_movement_speed);
    }
    goodgun(float init_size) {
        super(init_size);
    }

    void render() {
        face();
        hair();
        eyes();
        mouth();
    }

    void face() {
        beginShape();
        fill(251, 207, 187);
        vertex(x - 0.75 * size, y - size);
        vertex(x - size, y + 0.4 * size);
        bezierVertex(x - size, y + 0.4 * size, x, y + 2.5 * size, x + size, y + 0.4 * size);
        vertex(x + size, y + 0.4 * size);
        vertex(x + 0.75 * size, y - size);
        endShape(CLOSE);
    }

    void hair() {
        beginShape();
        fill(0);
        vertex(x - size + 0.25 / 6 * size, y - size + 1.4 * 5 / 6 * size);
        vertex(x - 0.9 * size, y - 1.1 * size);
        vertex(x + 0.9 * size, y - 1.1 * size);
        vertex(x + size - 0.25 / 6 * size, y - size + 1.4 * 5 / 6 * size);
        vertex(x + 0.75 * size, y - size);
        vertex(x - 0.75 * size, y - size);
        endShape(CLOSE);

        for (int i=0; i<10; i++) {
            triangle(x - 0.9 * size + 1.8 * size / 10 * i, y - 1.1 * size, x - 0.9 * size + 1.8 * size / 10 * (i + 0.5), y - 1.5 * size, x - 0.9 * size + 1.8 * size / 10 * (i + 1), y - 1.1 * size);
        }
    }

    void eyes() {
        fill(255, 0, 0);
        ellipse(x - 0.4 * size, y - 0.2 * size, size * 0.2, size * 0.2);
        ellipse(x + 0.4 * size, y - 0.2 * size, size * 0.2, size * 0.2);
    }

    void mouth() {
        beginShape();
        fill(255, 0, 0);
        vertex(x - 0.7 * size, y + 0.2 * size);
        bezierVertex(x - 0.7 * size, y + 0.2 * size, x, y + 2.5 * size, x + 0.7 * size, y + 0.2 * size);
        vertex(x + 0.7 * size, y + 0.2 * size);
        
        endShape(CLOSE);

        fill(255);
        rect(x - 0.6 * size, y + 0.2 * size, 1.2 * size, 0.1 * size);
    } 
}