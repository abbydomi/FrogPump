touchingShuriken = instance_place(x,y, Shuriken)
if touchingShuriken != noone {
    if sisterTrigger.touchingShuriken != noone {
        sprite_index = sTriggerGreen
        result = Result.Perfect
    } else {
        sprite_index = sTriggerYellow
        result = Result.Good
    }
} else {
    sprite_index = sTrigger
    result = Result.Bad
}