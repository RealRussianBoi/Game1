image_angle += 0.3;

x+=hsp;
y+=vsp;

hsp*=0.999;
vsp*=0.999;

if(!place_meeting(x,y,oBotBossPortal)){
image_speed = 1;
image_alpha -= 0.05;
}

if(image_alpha = 0) instance_destroy();
