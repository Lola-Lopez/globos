class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      ellipse(x,y,100,100);
      image(ballenaFea,x+50,y,100,20);
  }
  
}
PImage ballenaFea;
ArrayList<Globo> globos;


void setup()
{
  size(800,100);
  globos = new ArrayList<Globo>();  
  ballenaFea= loadImage("images.jpg");
}

void draw()
{
  background(36,0,69);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
