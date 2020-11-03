Particle[] sue=new Particle[270];//to win :-)

void setup()
{
  size(400, 400);
  
  for (int i =0; i<sue.length; i++)
{
    sue[i]=new NormalParticle();
}
  sue[0]=new JumboParticle();
  sue[1]=new OddballParticle();
}
void mousePressed()
{
  
  for (int i=0;i<sue.length; i++)
  {
    sue[i]=new NormalParticle();
    
  }
  
  sue[0]=new JumboParticle();
  sue[1]=new OddballParticle();
}
void draw()
{
  background(3, 8, 30);
  
  for (int i =0; i<sue.length; i++)
  {
    sue[i].show();
    sue[i].move();
  }
}

class NormalParticle implements Particle
{
  int myColor;
  public double myX, myY, Speed, Angle;
  
  public NormalParticle()
  {
    myX=200;
    myY=200;
    Angle=(Math.random()*3) * Math.PI;
    Speed=(Math.random()*5);
    myColor=(int)(Math.random()*255);
  }

  void move()
  {
    myX=myX+(Math.cos(Angle))*Speed;
    myY=myY+(Math.sin(Angle))*Speed;
  }
  void show()
  {
    fill(255,0,255); //starfield/firework? lol
    noStroke();
    ellipse((float)myX, (float)myY, 5, 5);
    fill(255);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //interface
{
  int myColor, direction;
  double myX, myY, Speed, Angle;
  OddballParticle()
  {
    myX=200;
    myY=100;
    Speed=(Math.random()*10);
    direction=1;
  }
  void move()
  {
    myX+=Speed*direction;
    if (myX<25)
    {
      direction=1;
    }
     if (myX>375)
     direction=-1;
  }
  void show() //spaceship
  {
    fill(250,240,177); //yellow
    ellipse((float)myX, (float)myY-10, 25, 25);
    fill(138, 43, 226); //purple
    ellipse((float)myX, (float)myY, 60, 20);
    
  }
}

public class JumboParticle extends NormalParticle//inheritance
{

  void show() // center
  {
    
    fill(216,191,216); //thistle
    ellipse((float)myX, (float)myY,40,40);
  }
}
