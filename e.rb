# E - King Bombee
N,M,K,S,T,X = gets.chomp.split.map(&:to_i)
uv = Array.new(M)

M.times do |m|
  uv[m] = gets.chomp.split.map(&:to_i)
end

link = {}
uv.each do |u|
  link[u[0]] ||= []
  link[u[1]] ||= []
  
  link[u[0]] << u[1]
  link[u[1]] << u[0]
end


dp = Array.new(K+1) do 
  Array.new(N+1) { 0 }
end

dp[0][S] = 1
(1..K).each do |i|
  (1..N).each do |j|
    sum = 0
    link[j].each { |x|
      sum += dp[i-1][x]
    }
    dp[i][j] += sum % 998244353
  end
end

#pp dp
puts dp[K][T] - dp[K-1][X]
