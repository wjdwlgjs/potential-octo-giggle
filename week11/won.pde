class won extends character {
    won(float init_size, float init_x, float init_y, float init_dx, float init_dy) {
        super(init_size, init_x, init_y, init_dx, init_dy);
    }
    won(float init_size, float init_x, float init_y, float keyboard_movement_speed) {
        super(init_size, init_x, init_y, keyboard_movement_speed);
    }
    won(float init_size) {
        super(init_size);
    }
    void render(){
        // 몸통
        fill(255, 165, 0);
        rect(x - size * 0.4, y - size * 0.4, size * 0.8, size * 0.8, size * 0.2);
        
        // 머리
        fill(255, 255, 0);
        ellipse(x, y - size * 0.4, size * 0.8, size * 0.8);
        
        //    눈
        fill(0);    
        float eyeSize = size * 0.1;
        ellipse(x - size * 0.2, y - size * 0.45, eyeSize, eyeSize);
        ellipse(x + size * 0.2, y - size * 0.45, eyeSize, eyeSize);
        
        // 입
        fill(255); 
        float mouthWidth = size * 0.3;
        float mouthHeight = size * 0.15;
        rect(x - mouthWidth / 2, y - size * 0.3, mouthWidth, mouthHeight, size * 0.05);
    }  

}