instance_deactivate_object(self);

//@desc Healthbar Code

hp = 75;
hp_max = hp;

healthbar_width = 41;
healthbar_height = 240;
healthbar_x = (view_wport[0]/10) - 125;
healthbar_y = view_yport[0] + 125;
healthbar_y_small = view_yport[0] + 125;

//Attack 1

Attack1Damage = 4;

PhaseCooldown = 60;
PhaseCooldownReset = PhaseCooldown;

AttackCooldown = 60;
AttackCooldownReset = AttackCooldown;

BurstCount = 10;
BurstCountReset = BurstCount;

//Attack 2

Attack2Damage = 5;

PhaseCooldown2 = 300;
PhaseCooldown2Reset = PhaseCooldown2;

BurstCount2 = 5;
BurstCount2Reset = BurstCount2;

WeaponSwitch = 2;



