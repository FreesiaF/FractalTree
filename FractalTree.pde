private double fractionLength = .75; 
private int smallestBranch = 3; 
private double branchAngle = .4;
public void setup() 
{   
	size(650,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(255,255,255);   
	stroke(98,52,18);
	strokeWeight(25);
	line(330,480,330,380);   
	drawBranches(330,380,100,3*Math.PI/2,20);; 

 


	stroke(108,62,28);

	strokeWeight(15);
	line(330,480,330,380);
	drawBranches(330,380,100,3*Math.PI/2,10); 

} 
public void drawBranches(int x,int y, double branchLength, double angle,double strokeW) 
{   
	strokeWeight((float)strokeW);
	double angle1 = angle+ branchAngle;
	double angle2 = angle - branchAngle;
	int endX1,endY1,endX2,endY2;
	endX1 = (int)(branchLength*Math.cos(angle1)+x);
	endY1 = (int) (branchLength*Math.sin(angle1)+y);
	endX2 = (int)(branchLength*Math.cos(angle2)+x);
	endY2 = (int) (branchLength*Math.sin(angle2)+y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	branchLength = branchLength * fractionLength;
	strokeW = strokeW * fractionLength;

	if (branchLength>smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1,strokeW);
		drawBranches(endX2,endY2,branchLength,angle2,strokeW);
	}


} 
