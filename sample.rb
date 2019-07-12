class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "数字を入力してください"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"
    player_hand = gets.chomp
      if player_hand == "0" || player_hand == "1" || player_hand == "2"
        hands = player_hand.to_i
      else
        puts "0,1,2のどれかを入力してください"
        Player.new.hand
      end
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    jankens = ["グー","チョキ","パー"]

      if (player_hand - enemy_hand + 3) % 3 == 2  #自分が勝ちの場合
        puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです。"
        return false #ここで処理を終わらせる
      elsif (player_hand - enemy_hand + 3) % 3 == 1 #自分が負けの場合
        puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです。"
        return false  #ここで処理を終わらせる
      else
        puts "相手の手は#{jankens[enemy_hand]}です。あいこです。"
        return true   #あいこの場合はもう一度じゃんけんをするためのtrue
      end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
next_game = true #あいこの戻り値trueを繰り返し処理を行う際に使うnext_gameに代入
while next_game do #whileを使った繰り返し処理
  next_game = janken.pon(player.hand, enemy.hand) #処理の内容として
end
