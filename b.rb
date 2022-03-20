# B - Go Straight and Turn Right
N = gets.chomp.to_i
T = gets.chomp.chars

dir = "E" # ESWN
step = [[1,0],[0,-1],[-1,0],[0,1]] # 東南西北

rotate = 0
pos = [0,0]

T.each do |t|
  if t == "R" then
    rotate += 1
    if rotate > 3 then
      rotate = 0
    end
  end

  if t == "S" then
    pos = [pos[0] + step[rotate][0] , pos[1] + step[rotate][1]]
  end
end

puts "#{pos[0]} #{pos[1]}"
  