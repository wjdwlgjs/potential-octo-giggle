character[] character_array = new character[3];

void setup(){
    size(500,500);
    /* A=new won(200,200,50,5,4);
    B=new won(400,400,70); */
    character_array[0] = new won(50, 200, 200, 5, 4);
    character_array[1] = new won(70, 400, 400, 5);
    character_array[2] = new won(40);
}
void draw(){
    background(0,255,255);
    for (int i = 0; i < 3; i++) {
        character_array[i].move();
        character_array[i].render();
    }
}