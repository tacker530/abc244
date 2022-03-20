# D - Swap Hats
INITIAL = gets.chomp.split
GOAL    = gets.chomp.split

if ( INITIAL[0] == GOAL[0] and INITIAL[1] != GOAL[1] and INITIAL[2] != GOAL[2]  ) or
   ( INITIAL[0] != GOAL[0] and INITIAL[1] == GOAL[1] and INITIAL[2] != GOAL[2]  ) or
   ( INITIAL[0] != GOAL[0] and INITIAL[1] != GOAL[1] and INITIAL[2] == GOAL[2]  ) then
   puts "No"
else
  puts "Yes"
end