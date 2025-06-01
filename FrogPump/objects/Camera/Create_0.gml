shake = false
shakeDir = Direction.Up
magnetx = 0
magnety = 0
cam = view_camera[0]
startx = (room_width / 2) - camera_get_view_width(cam) / 2
starty = room_height / 2 - camera_get_view_height(cam) / 2
finalx = startx
finaly = starty
width = 1024
height = 576
zoom = 1
camWidth = width * zoom
camHeight = height * zoom

camera_set_view_pos(cam, startx, starty)