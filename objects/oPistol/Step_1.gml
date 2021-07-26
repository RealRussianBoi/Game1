
//These two commands below say that the x and y of the gun are the same as the origin of my character
x = oPlayer.x;
y = oPlayer.y-3;
 
 
 // This is saying that the direction the gun is pointing to is the exact place my cursor is
image_angle = point_direction(x,y,mouse_x,mouse_y);

//the code below is checked every frame
firingdelay = firingdelay -1
recoil = max(0,recoil-1)

if(mouse_check_button(mb_left)) and (firingdelay < 0 ){
recoil = 4;
firingdelay = 30;
//the with command basically adds in anything you place in the brackets, 
//combining the code in its brackets with the code of this object. If I added a code from my oPlayer
//into here, it would apply to the If statement it is inside of. 
with (instance_create_layer(x,y, "PistolBullets", oPistolBullet)){
//the With code above creates a temporary layer that is edited according to the commands in these squiggly brackets.
speed = 40;
 direction = other.image_angle + random_range(-3,3);
 image_angle = direction;
}


}//Random_range finds a random number between the two numbers inside ()

x = x- lengthdir_x(recoil,image_angle);
y = y- lengthdir_y(recoil,image_angle);



















