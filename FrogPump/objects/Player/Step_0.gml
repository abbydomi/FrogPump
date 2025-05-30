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
if monkeyGetInputStatus(Input.Primary) {
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
}

image_xscale = lerp(image_xscale, finalXscale, 0.1)
image_yscale = lerp(image_yscale, 1, 0.1)