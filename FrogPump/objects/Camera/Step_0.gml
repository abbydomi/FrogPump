var camx = camera_get_view_x(cam)
var camy = camera_get_view_y(cam)

if shake {
    finalx = lerp(camx, camx + magnetx, 0.1)
    finaly = lerp(camy, camy + magnety, 0.1)
} else {
    finalx = lerp(camx, startx, 0.1)
    finaly = lerp(camy, starty, 0.1) 
}

camera_set_view_pos(cam, finalx, finaly)

camera_set_view_size(cam, camWidth, camHeight)