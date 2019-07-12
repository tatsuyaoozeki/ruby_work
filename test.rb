# ① Playerクラスに新しいオブジェクトを作る

# ② 大文字がクラス、小文字がインスタンス
r = 0
s = 1
p = 2




janken = []




# じゃんけんの勝ち負け
# 繰り返し処理
janken.each_with_index do |n,index|
  puts "0~2までの数字を入力をしてください"
  number = gets.to_i
# 自分が勝つとき


    if (r - s + 3) % 3 || (s - p + 3) % 3 || (p - r + 3) % 3 == 2
        puts "勝ち"
      elsif (r - p + 3) % 3 || (s - r + 3) % 3 || (p - s + 3) % 3 == 1
        puts "負け"
      else
        puts "引き分け"
        break
    end
    puts "数字を入力してください"
    puts
end

# puts "０〜２までの数字を入力をしてください"





r = 0
s = 1
p = 2




hand_ary = [0,1,2]




# じゃんけんの勝ち負け
# 繰り返し処理

  puts "0~2までの数字を入力をしてください"
  number = gets.to_i

result = (player_hand - enemy_hand + 3) % 3
    if result == 2
        puts "勝ち"
      elsif result == 1
        puts "負け"
      else
        puts "あいこ"
        break
    end
    puts "数字を入力してください"
    puts
end

# puts "０〜２までの数字を入力をしてください"
