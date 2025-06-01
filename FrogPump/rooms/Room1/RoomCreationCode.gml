if !audio_is_playing(wind) {
    audio_play_sound(wind, 1, true, 0.25, 0, 1)
}

if audio_is_playing(MenuMusic) {
    audio_stop_sound(MenuMusic)
}

if !audio_is_playing(ShurikenStart) {
    audio_play_sound(ShurikenStart, 1, false, 2, 0, 1)
}