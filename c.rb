# C - Yamanote Line Game

N = gets.chomp.to_i
rest  = (1..2*N+1).to_a

# 無限ループ
loop do
  puts "#{rest[0]}"
  STDOUT.flush

  rest.delete_at(0)
  aoki = gets.chomp.to_i
  rest.delete(aoki)
  if aoki == 0 then
    exit
  end
end