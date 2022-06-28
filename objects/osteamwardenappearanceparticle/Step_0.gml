image_angle += 0.7;

x+=hsp;
y+=vsp;

hsp*=0.8;
vsp*=0.8;

image_speed = 1;
image_alpha -= 0.05;

if(image_alpha = 0) instance_destroy();
