// Player logic
if monkeyGetInputStatus(Input.Up) == MONKEY.RELEASED {
	dir = Direction.Up
    sprite_index = sPlayerUp
    image_yscale = 0
}
if monkeyGetInputStatus(Input.Down) == MONKEY.RELEASED {
	dir = Direction.Down
    finalXscale = 1
    sprite_index = sPlayerDown
    image_yscale = 0
}
if monkeyGetInputStatus(Input.Right) == MONKEY.RELEASED {
	dir = Direction.Right
    sprite_index = sPlayerHorizontal
    image_xscale = 0
    finalXscale = 1
}
if monkeyGetInputStatus(Input.Left) == MONKEY.RELEASED {
	dir = Direction.Left
    image_xscale = 0
    sprite_index = sPlayerHorizontal 
    finalXscale = -1
}
if monkeyGetInputStatus(Input.Primary) == MONKEY.RELEASED {
    // Animation
    switch (dir) {
        case Direction.Up:
    		sprite_index = sPlayerUpAttack
    		break
	case Direction.Down:
		sprite_index = sPlayerDownAttack
		break
	case Direction.Right: 
        sprite_index = sPlayerHorizontalAttack
        
		break 
    case Direction.Left:
		sprite_index = sPlayerHorizontalAttack
		break
    }
    
    var trigger = attackTriggers[dir] 
    trigger.active = true
    trigger.alarm[0] = 8
    with (trigger) {
        var shuriken = instance_place(x, y, Shuriken)
        if shuriken != noone {
            repeat(irandom_range(6, 12)) {
                instance_create_depth(shuriken.x, shuriken.y, shuriken.depth-1, ShurikenParticle)
            }
            instance_destroy(shuriken)
        }
    }
}

if sprite_index == sPlayerDown || sprite_index == sPlayerUp || sprite_index == sPlayerHorizontal {
    image_yscale = wave(1, 0.8, 0.3, 0)
}

image_xscale = lerp(image_xscale, finalXscale, 0.1)
image_yscale = lerp(image_yscale, 1, 0.1)