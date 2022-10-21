puts "じゃんけん・・・"
def zentai
 def mezo_janken
   puts "0(グー)1(チョキ)2(パー)3(戦わない)"

   te_type = gets.to_i
   aite_type = rand(3)

   jankens = ["グー","チョキ","パー"]

   puts "ポン！"
   puts "----------"

 if te_type == 0
    puts "あなた:#{jankens[te_type]}を出しました"
    puts "相手：#{jankens[aite_type]}を出しました"
 elsif te_type == 1
    puts "あなた:#{jankens[te_type]}を出しました"
    puts "相手：#{jankens[aite_type]}を出しました"
 elsif te_type == 2
    puts "あなた:#{jankens[te_type]}を出しました"
    puts "相手：#{jankens[aite_type]}を出しました"
 elsif te_type == 3
    puts "戦わない" 
    exit
 else
    puts "エラー"
    exit
 end  
   
 if te_type == aite_type
    puts "あいこで"
    return true
  
 #te_typeの勝ち
 elsif (te_type == 0 && aite_type ==1) || (te_type == 1 && aite_type == 2) || (te_type == 2 && aite_type == 0)
    @janken_result = "win"
    return false
    
 #te_typeの負け
 elsif (te_type == 0 && aite_type == 2) || (te_type ==1 && aite_type == 0 ) || (te_type == 2 && aite_type ==1)
    @janken_result = "lose"
    return false
 end
 end

  next_game = true
  while next_game
   next_game = mezo_janken
  end


puts "----------"
puts "あっち向いて〜"
puts "0(上)1(下)2(左)3(右)"

my_face = gets.to_i
aite_face = rand(4)

atti = ["上","下","左","右"]

puts "ホイ！"
puts "----------"

puts "あなた:#{atti[my_face]}を出しました"
puts "相手：#{atti[aite_face]}を出しました"

   if (my_face == aite_face) && ( @janken_result == "win")
    puts "あなたの勝ち"
    return false
   elsif (my_face == aite_face) && (@janken_result == "lose")
    puts "あなたの負け"
    return false
   else
    puts "引き分け"
    return true
   end  
end
 
 re_game = true
 while re_game
   re_game = zentai
 end
 