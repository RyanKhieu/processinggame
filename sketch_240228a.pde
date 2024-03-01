float playerX, playerY; // Player's position
float groundLevel;      // Ground level position
float playerYSpeed = 0;
float jumpVel = -100;
boolean jump = false;
float grav = 0.25;

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
  playerDraw();
  background(200, 220, 255); 
  // Draw ground
  fill(100, 200, 100);
  rect(0, groundLevel, width, height - groundLevel);
  // Draw player
  playerDraw();
  playerUpdate();
  gravity(); 
}

void playerDraw() {
  fill(255, 0, 0);
  ellipse(playerX, playerY, 30, 30); 
  fill(255, 0, 0);
  ellipse(playerX, playerY, 30, 30);
}

void playerUpdate() {
  playerY += playerYSpeed;
  playerYSpeed += grav;
  
  if (playerY > groundLevel) {
    playerY = 450;
    playerYSpeed = 0;
  }
  if (jump) {
   playerYSpeed = -5;
   jump = false;
  }
}

void keyPressed() {

  // Jump when the spacebar is pressed
  if (key == ' ' && playerY == groundLevel) {   
    if (!jump) {
      playerYSpeed = jumpVel;
      jump = true;
    }
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
  } 
  else {
    playerY = groundLevel;
  }
}
