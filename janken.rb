 # じゃんけんメソッド
  def janken
    p "ジャンケン、、、"
    p "0(グー)、1(チョキ)、2(パー)"
  
    # 自分の手を決めてもらう
    user_hand = gets.to_i
  
    # cpの手をランダムで出す
    cp_hand = rand(3)
  
    hand_type = ["グー", "チョキ", "パー"]
  
    p "ホイ！"
    p "-------------------"
  
    p "あなたは#{hand_type[user_hand]}を出しました"
    p "相手は#{hand_type[cp_hand]}を出しました"
    p "-------------------"
    
    # 結果の分岐
    if user_hand == cp_hand
      p "あいこです"
      janken
      
    # user_handが勝つ処理 
    elsif user_hand == 0 && cp_hand == 1
      p "ジャンケンに勝ちました"
      p "----------------"
      janken_win

    elsif user_hand == 1 && cp_hand == 2
      p "ジャンケンに勝ちました"
      p "----------------"
      janken_win
      
    elsif user_hand == 2 && cp_hand == 0
      p "ジャンケンに勝ちました"
      p "----------------"
      janken_win

    # cp_handが勝つ処理 
    elsif user_hand == 0 && cp_hand == 2
      p "ジャンケンに負けました"
      p "----------------"
      janken_lose

    elsif user_hand == 1 && cp_hand == 0
      p "ジャンケンに負けました"
      p "----------------"
      janken_lose
      
    elsif user_hand == 2 && cp_hand == 1   
      p "ジャンケンに負けました"
      p "----------------"
      janken_lose
      
    else
      p "エラーです"
      janken
      
    end
  end
  
  # あっち向いてホイメソッド
  # じゃんけんで勝った場合
  def janken_win
    p "指差す方向を決めてください"
    p "0(上)、1(下)、2(左)、3(右)"
  
    # 自分の指差す方向を決めてもらう
    user_finger = gets.to_i
  
    # cp顔の向きをランダムで出す
    cp_face = rand(4)
  
    way = ["上", "下", "左","右"]
  
    p "あっち向いてホイ！"
    p "-------------------"
  
    p "あなたは#{way[user_finger]}を指差しました"
    p "相手は#{way[cp_face]}を向きました"
    p "-------------------"
    
    if user_finger == cp_face
      p "あなたの勝ちです"
      p "----------------"

    else
      p "引き分けです。"
      p "----------------"
      janken
      
    end
  end  
    
  # あっち向いてホイメソッド
  # じゃんけんで負けた場合
  def janken_lose
    p "顔を向ける方向を決めてください"
    p "0(上)、1(下)、2(左)、3(右)"
  
    #顔を向ける方向を決めてもらう
    user_face = gets.to_i
  
    # cpの指差す方向をランダムで出す
    cp_finger = rand(4)
  
    way = ["上", "下", "左","右"]
  
    p "あっち向いてホイ！"
    p "-------------------"
  
    p "あなたは#{way[user_face]}を向きました"
    p "相手は#{way[cp_finger]}を指差しました"
    p "-------------------"
    
    if user_face == cp_finger
      p "あなたの負けです"
      p "----------------"
      
    else
      p "引き分けです。"
      p "----------------"
      janken
      
    end
  end

  janken
  
  

  
  







  