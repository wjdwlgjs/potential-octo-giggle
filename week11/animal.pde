class animal{
    animal(){
        hincm = 5;
        weight = 100;
        brain = 2;
    }
    float hincm,weight;
    int brain;
    void eat(){
        println("eat all");
    }
    void move(){
        println("move to you");
    }
}

class bird extends animal {
    float wingspan;
    bird() {
        super();
        wingspan = 100;
    }

    void eat() {
        println("hawk");
    }
}

animal[] animal_array = new animal[6];

void setup() {
    
    animal_array[0] = new animal();
    animal_array[1] = new bird();

    animal_array[0].eat();
    // output: eat all
    animal_array[1].eat();
    // output: hawk
    // overrides animal.eat() and calls bird.eat()
    animal_array[1].move();
    // output: move to you
    // bird.move() was not made, so this calls animal.move()

    println(animal_array[0].wingspan);
    // ???
    println(animal_array[1].wingspan);
    // 100

}