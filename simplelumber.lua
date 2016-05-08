function lumber()
	turtle.select(2)
	count = 0
	while turtle.compare() do
        turtle.select(3)
		turtle.dig()
		turtle.digUp()
		turtle.up()
		count = count + 1
        turtle.select(2)
	end
	for i=1,count do
		turtle.down()
	end
	if turtle.getItemCount(3) ~= 0 then
		turtle.turnLeft()
		for i=3,16 do
			turtle.select(i)
			turtle.drop()
		end
		turtle.turnRight()
		turtle.select(2)
	end
end

function planter()
	a,b = turtle.inspect()
	if a == false then
		turtle.select(1)
		turtle.place()
	end
end

a,b = turtle.inspectDown()
count = 0
if a == false then
	while a == false do
		turtle.down()
		a,b = turtle.inspectDown()
	end
end

a,b = turtle.inspect()
if a == false then
	while b["name"] ~= "minecraft:chest" do
		turtle.turnRight()
		a,b = turtle.inspect()
	end
	turtle.turnRight()
	turtle.select(1)
	turtle.place()
end

while true do
	lumber()
	planter()
end
