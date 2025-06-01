startSpeed = lerp(startSpeed, 0, 0.1)
startSpeed = clamp(startSpeed, 0, 25)
x += startSpeed * dir
y += 2