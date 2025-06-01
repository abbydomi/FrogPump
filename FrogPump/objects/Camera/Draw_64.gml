draw_set_color(c_white)
draw_set_font(UngaiFont)

var width = display_get_gui_width()
var height = display_get_gui_height()
var middleW = width / 2
var middleH = height / 2

var circlePadding = 48
var circleRadius = 6
if instance_exists(Player) {
    with Player {
        switch (dir) {
            case Direction.Up:
                draw_circle(middleW, middleH - circlePadding, circleRadius, false)
                break
            case Direction.Down:
                draw_circle(middleW, middleH + circlePadding, circleRadius, false)
                break
            case Direction.Right:
                draw_circle(middleW + circlePadding, middleH, circleRadius, false)
                break
            case Direction.Left:
                draw_circle(middleW - circlePadding, middleH, circleRadius, false)
                break
        }
        // top
        draw_circle(middleW, middleH - circlePadding, circleRadius, true)
        
        // bottom
        draw_circle(middleW, middleH + circlePadding, circleRadius, true)
        
        // trailing
        draw_circle(middleW - circlePadding, middleH, circleRadius, true)
        
        // leading
        draw_circle(middleW + circlePadding, middleH, circleRadius, true)
        
        // Hitpoints
        for (var i = 0; i < hitpoints; i += 1) {
            draw_sprite_ext(sHitpoint, 0, -32 + width - 64 * i, 32, 0.1, 0.1, 0, c_white, 1)
        }
    }
}

if instance_exists(AttackTrigger) {
    with AttackTrigger {
        var position = worldxy_to_guixy(x, y)
        draw_circle(position[0], position[1], 26, !active)
    }
}
if room == Room1 {
    draw_sprite_ext(sScroll, 0, 30, 75, 0.24, 0.24, 0, c_white, 1)
    draw_set_color(c_red)
    draw_text_transformed(90, 45, "Score", 0.5, 0.5, 0)
    draw_text(120, 69, score)
    
    draw_set_color(c_white)
}