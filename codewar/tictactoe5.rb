
def is_solved(board)
	grid=board
	for x in 0..3 do
		row = ([grid[x][0],grid[x][1],grid[x][2]]).uniq
		if row.length == 1 and grid[x][0] != 0
			return grid[x][0]
			p row
		end
	end
	for x in 0..3 do
		column = ([grid[0][x],grid[1][x],grid[2][x]]).uniq
		if column.length == 1 and grid[0][x] != 0
			return grid[0][x]
		end
	end
	diag1 = ([grid[0][0],grid[1][1],grid[2][2]]).uniq
	diag2 = ([grid[0][2],grid[1][1],grid[2][0]]).uniq
	if diag1.length == 1 or diag2.length == 1 and grid[1][1] != 0
		return grid[1][1]
	end
end
p is_solved([[1,1,0],[2,1,2],[1,1,0]])