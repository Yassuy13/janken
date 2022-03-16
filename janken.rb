class Janken
  def start
    call
    type
    play
    direction
    hoi
  end
  
  def call
    puts "じゃんけん..."
  end
  
  def type
    @options = {
      0 => "グー",
      1 => "チョキ",
      2 => "パー",
      3 => "戦わない"
    }
    @options.each { |key, name| puts "#{key}(#{name})" }
  end
  
  def play
    @player_hand = @options[gets.to_i]
    @program_hand = @options[rand(4)]
    puts "ホイ！"
    puts "------------"
    puts "あなた:#{@player_hand}を出しました"
    puts "相手:#{@program_hand}を出しました"
    puts "------------"
    result
  end
  
  def result
    if (@player_hand == "グー" && @program_hand == "グー")||(@player_hand == "チョキ" && @program_hand == "チョキ")||(@player_hand == "パー" && @program_hand == "パー")
      puts "あいこで"
      play
    elsif (@player_hand == "グー" && @program_hand == "チョキ")||(@player_hand == "チョキ" && @program_hand == "パー")||(@player_hand == "パー" && @program_hand == "グー")
      puts "あなたの勝ちです"
      puts "------------"
    elsif (@player_hand == "グー" && @program_hand == "パー")||(@player_hand == "チョキ" && @program_hand == "グー")||(@player_hand == "パー" && @program_hand == "チョキ")
      puts "相手の勝ちです"
      puts "------------"
    elsif (@player_hand == "戦わない")||(@program_hand == "戦わない")
      start
    end
  end
  
  def direction
    puts "あっちむいて"
    @directions = {
      0 => "上",
      1 => "下",
      2 => "左",
      3 => "右"
    }
    @directions.each { |key, name| puts "#{key}(#{name})" }
  end
  
  def hoi
    @player_finger = @directions[gets.to_i]
    @program_finger = @directions[rand(4)]
    puts "ほい"
    puts "------------"
    puts "あなた:#{@player_finger}"
    puts "相手:#{@program_finger}"
    puts "------------"
    game
  end
  
  def game
    if @player_finger == @program_finger
      puts "勝利!"
      puts "------------"
      start
    else 
      start
    end
  end
end

j = Janken.new
j.start