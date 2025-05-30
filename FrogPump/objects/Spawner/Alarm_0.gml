var shuriken = instance_create_depth(x, y, depth, Shuriken)
shuriken.dir = dir
shuriken.spd = spawnSpeed
if (shuriken.dir == Direction.Up || Direction.Down) && spawnSpeed > 5 {
    shuriken.spd -= 1
}

alarm[0] = freq - (score * 2.2)