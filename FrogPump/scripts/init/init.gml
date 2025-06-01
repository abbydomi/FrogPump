function init(){
	monkeyInit(false)
	
	enum Input {
		Up,
		Down,
		Left,
		Right,
		Primary,
		Pause
	}
	
	enum Direction {
		Up,
		Down,
		Left,
		Right
	}
    
    enum Result {
        Perfect,
        Good,
        Bad
    }
	
	monkeyCreateListener(Input.Up, vk_up, gp_padu, 0, 1)
	monkeyCreateListener(Input.Down, vk_down, gp_padd, 0, 1)
	monkeyCreateListener(Input.Left, vk_left, gp_padl, 0, 1)
	monkeyCreateListener(Input.Right, vk_right, gp_padr, 0, 1)
	monkeyCreateListener(Input.Primary, vk_space, gp_face1, 0, 1)
	monkeyCreateListener(Input.Pause, vk_escape, gp_start, 0, 1)
}