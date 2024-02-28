int playerX, playerY; // Player's position

int groundLevel;      // Ground level position



void setup() {

  size(800, 400);

  playerX = 50;

  playerY = groundLevel = height - 50; // Player starts at ground level

}



void draw(){

  background(200, 220, 255); 



  // Draw ground

  fill(100, 200, 100);

  rect(0, groundLevel, width, height - groundLevel);



  // Draw player

  fill(255, 0, 0);

  ellipse(playerX, playerY, 30, 30); 
 background(200, 220, 255); 



  // Draw ground

  fill(100, 200, 100);

  rect(0, groundLevel, width, height - groundLevel);



  // Draw player

  fill(255, 0, 0);

  ellipse(playerX, playerY, 30, 30); 



  gravity(); 


}



void keyPressed() {

  // Jump when the spacebar is pressed

  if (key == ' ' && playerY == groundLevel) {
       
    playerY -= 100;


  }
 else if (key == CODED)
    {
      if (keyCode == RIGHT)
      {
        playerX += 5;
      }
      if (keyCode == LEFT)
      {
        playerX -= 5;
      }
    }
}



void gravity() {

  // Apply gravity to bring the player back to the ground

  if (playerY < groundLevel) {

    playerY += 5;

  } else {

    playerY = groundLevel;

  }

}
