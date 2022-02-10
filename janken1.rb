def janken
  puts "じゃんけん。。。"
  puts "[0]:(グー) \n[1]:(チョキ) \n[2]:(パー) "

  player_hand = gets.to_i

  program_hand = rand(3)

  case_pattern = ""
 
 
 if player_hand > 2
	 puts "入力された値が無効です"
	 return true
 end

 
  jankens=["グー","チョキ","パー"]
 
  puts "ホイ！"
 
  puts "あなた:#{jankens[player_hand]},相手:#{jankens[program_hand]}"
 
  
 if player_hand == program_hand
  case_pattern = "あいこ"
  puts "あいこ"
  return true
 elsif (player_hand == 0 && program_hand == 1)|| (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
  case_pattern = "あなたの勝ちです"
  puts "あなたの勝ちです"
 else
  case_pattern = "負け"
  puts "負け"
 end


  puts "----------------------"
  puts "あっち向いて〜。。。。"
  puts "[0]:(上) \n[1]:(下) \n[2]:(右) \n[3]:(左)"
  

 
  player_hand2 = gets.to_i

  program_hand2 = rand(4)

if player_hand2 > 3
	 puts "入力された値が無効です"
	 return true
end


atchimuitehois=["上","下","右","左"]


case case_pattern
 when "あなたの勝ちです"
  puts "ホイ！"
  puts "あなた:#{atchimuitehois[player_hand2]},相手:#{atchimuitehois[program_hand2]}"
  puts "----------------------"
  return true
 when "負け"
  puts "ホイ！"
  puts "相手:#{atchimuitehois[program_hand2]},あなた:#{atchimuitehois[player_hand2]}"
  puts "----------------------"
  return true
 end
end


next_game = true
while next_game
  next_game = janken
  
end
