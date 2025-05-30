var shuriken = instance_create_depth(x, y, depth, Shuriken)
shuriken.dir = dir
shuriken.spd = irandom_range(1, 6)
alarm[0] = irandom_range(60, 320)