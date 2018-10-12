NormalParticle [] particles;
//your code here
void setup()
{
	size(600,600);
	particles = new NormalParticle[100];
	for(int i = 0; i < particles.length; i++){
		particles[i] = new NormalParticle();
	}
	//particles[0] = new OddballParticle();
	//particles[1] = new JumboParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < particles.length; i++){
		particles[i].move();
		particles[i].show();
	}
}
class NormalParticle implements Particle   
{
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle(){
		myColor = 255;
		myX = 300;
		myY = 300;
		myAngle = (Math.PI*2) * Math.random();
		mySpeed = Math.random()*11;
	}
	public void move(){
		myX = myX + (Math.cos(myAngle) * mySpeed);
		myY = myY + (Math.sin(myAngle) * mySpeed);
	}
	public void show(){
		fill(myColor);
		ellipse((int)myX, (int)myY, 10, 10);
	}
}
interface Particle
{
	public void show();
	public void move();
}
// class OddballParticle implements Particle
// {
// 	//your code here
// }
// class JumboParticle extends NormalParticle
// {
// 	public void show(){
// 		ellpise(myX, myY ,50 ,50);
// 	}
// }

