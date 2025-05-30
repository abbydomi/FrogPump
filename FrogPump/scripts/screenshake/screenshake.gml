function screenshake(xmag, ymag, stopAt) {
    with (Camera) {
        alarm[0] = stopAt
        magnetx += xmag
        magnety += ymag
        shake = true
    }
}