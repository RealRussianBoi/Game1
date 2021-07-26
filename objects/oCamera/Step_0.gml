/// @description Update Camera Position

//Update Destination

if(instance_exists(follow)){

xTo = follow.x;
yTo = follow.y;

}


// Update object Position

// Above, the xTo and yTo equal (follow), and in o Camera -> Create, the follow variable is: follow = oPlayer. 
// The code above means that If there is a follow, (oPlayer) in our game, our xTo and yTo constantly update to stay as 
// oPlayer's x and y coordinates. Below, the x and y are outside of the If statement and pertain only to the oCamera's step event, changing the camera's 
// x and y coordinates to subtract from the current xTo and yTo which are the player's coordinates. This changes the camera's viewpoint to 
// snap onto the result of the subtraction of xTo and y - x. Because it snaps on and doesnn't slowly shift in an elegant way, we wrote that the result
// of that subtraction would be divided by 25, so that instead of snapping onto where the viewpoint was supposed to be, the camera snaps 1/25ths of the way
// there every frame, making a smooth transition for the camera to follow the player.  

x += (xTo - x ) / 25;
y += (yTo - y ) / 25

//The clamp puts a min and max value as to where the camera can float. In this case we made the camera not float too far out of our game room's walls. 
x = clamp(x,view_w_half,room_width - view_w_half);


//Update Camera View

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);










