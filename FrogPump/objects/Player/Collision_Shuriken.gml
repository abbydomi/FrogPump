repeat(irandom_range(6, 12)) {
    instance_create_depth(other.x, other.y, depth-1, Blood)
}

var intensity = 42 * other.spd
var duration = 6

switch (other.dir) {
    case Direction.Up:
        screenshake(0, intensity, duration)
        break
    case Direction.Down:
        screenshake(0, -intensity, duration)
        break
    case Direction.Left:
        screenshake(intensity, 0, duration)
        break
    case Direction.Right:
        screenshake(-intensity, 0, duration)
        break
}

if hitpoints <= 0 {
    room_goto(Gameover)
} else {
    hitpoints--
}

audio_play_sound(hit, 1, false, 0.5, 0, random_range(0.8, 1.2))

instance_destroy(other)