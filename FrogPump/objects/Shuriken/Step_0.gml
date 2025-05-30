switch (dir) {
    case Direction.Up:
        y -= spd
        image_angle += spd * 2
        break
    case Direction.Down:
        y += spd
        image_angle -= spd * 2
        break
    case Direction.Left:
        x -= spd
        image_angle -= spd * 2
        break
    case Direction.Right:
        x += spd
        image_angle += spd * 2
        break
}