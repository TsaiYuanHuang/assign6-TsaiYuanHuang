class Clock extends Item{
	// Requirement #2: Complete Clock Class
  
  Clock(float x, float y){
    super(x,y); 
  }
  
  void display(){
    for(int i = 0; i < items.length; i++){
      image(clock, x, y);
    }
  }
  
  void checkCollision(Player player){
    if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

        addTime(CLOCK_BONUS_SECONDS);
        x = y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

      }
  }
}
