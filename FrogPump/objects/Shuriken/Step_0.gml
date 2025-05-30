switch (dir) {
    case Direction.Up:
        y -= spd
        image_angle += spd
        break
    case Direction.Down:
        y += spd
        image_angle -= spd
        break
    case Direction.Left:
        x -= spd
        image_angle -= spd
        break
    case Direction.Right:
        x += spd
        image_angle += spd
        break
}