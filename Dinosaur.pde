class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class
  
  float speed = 1f;
	final float TRIGGERED_SPEED_MULTIPLIER = 5;
  
  Dinosaur(float x, float y){
    super(x,y);
  }
  
  void checkCollision(Player player){

    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){

      player.hurt();

    }
  }

  void display(){
    int direction = (speed>0) ? RIGHT : LEFT;
    
    pushMatrix();
    translate(x,y);
    if(direction == RIGHT){
      scale(1,1);
      image(dinosaur, 0,0,w,h);
    } else {
      scale(-1,1);
      image(dinosaur,-w,0,w,h);
    }
    popMatrix();
  }
  
  
  void update(){

    float currentSpeed = speed;
    
    if(player.y == y){
      if( (player.x > x && speed>0) || (player.x < x && speed<0)) {currentSpeed *= TRIGGERED_SPEED_MULTIPLIER;} 
    }
    
    x += currentSpeed;
    if(x<0 || x > width-w) { speed *= -1; }
  }  
}
