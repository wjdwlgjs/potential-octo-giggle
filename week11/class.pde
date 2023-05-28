class character {
    float x, y, dx, dy, size;
    boolean move_by_mouse, move_by_keyboard;
    character(float init_size, float init_x, float init_y, float init_dx, float init_dy) {
        size = init_size;
        x = init_x;
        y = init_y;
        dx = init_dx;
        dy = init_dy;
    }
    character(float init_size, float init_x, float init_y, float keyboard_movement_speed) {
        // constructor for keyboard-moved objects
        size = init_size;
        x = init_x;
        y = init_y;
        move_by_keyboard = true;
        move_by_mouse = false;
        dx = keyboard_movement_speed;
        dy = keyboard_movement_speed;
    }
    character(float init_size) {
        // constructor for mouse-following objects
        size = init_size;
        x = mouseX;
        y = mouseY;
        move_by_mouse = true;
        move_by_keyboard = false;
    }

    void move() {
        if (move_by_mouse) {
            x = mouseX;
            y = mouseY;
        }
        else if (move_by_keyboard) {
            if (keyPressed) {
                if (key == 'w' && y > 0) {
                    y -= dy;
                }
                if (key == 'a' && x > 0) {
                    x -= dx;
                }
                if (key == 's' && y < height) {
                    y += dy;
                }
                if (key == 'd' && x < width) {
                    x += dx;
                }
            }
        }
        else {
            x += dx;
            y += dy;
            if (x <= 0  || x >= width) {
                dx *= -1;
            }
            if (y <= 0 || y >= height) {
                dy *= -1;
            }
        }
    }
    
    void render() {
        // Although render() will only be called on inherited classes, we need this to be declared in the parent
        // If the inherited class has its own render(), this render() in the parent class will be overrided.
        println("render() has not been implemented for this character");
    }
}
