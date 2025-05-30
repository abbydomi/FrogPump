/// @description Insert description here
// You can write your code in this editor
switch (dir) {
    case Direction.Up:
        if y < 0 {
            instance_destroy()
        }
        break
    case Direction.Down:
        if y > room_height {
            instance_destroy()
        }
        break
    case Direction.Left:
        if x < 0 {
            instance_destroy()
        }
        break
    case Direction.Right:
        if x > room_width {
            instance_destroy()
        }
        break
}