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
    0 => 'グー',
    1 => 'チョキ',
    2 => 'パー',
    3 => '戦わない'
    }
    @options.each { |key, name| puts "#{key}(#{name})" }
  end
  
  def play
    @player_hand = @options[gets.to_i]
    @program_hand = @options[rand(4)]
    puts "ホイ！"
    puts '------------'
    puts "あなた:#{@player_hand}を出しました"
    puts "相手:#{@program_hand}を出しました"
    puts '------------'
    result
  end
  
  def result
    if @player_hand == @program_hand
      puts "あいこで"
      play
    elsif (@player_hand == 0 && @program_hand == 1)||(@player_hand == 1 && @program_hand == 2)||(@player_hand == 2 && @program_hand == 0)
      puts "あなたの勝ちです"
    elsif (@player_hand == 0 && @program_hand == 2)||(@player_hand == 1 && @program_hand == 0)||(@player_hand == 2 && @program_hand == 1)
      puts "相手の勝ちです"
    elsif (@player_hand == 3 && @program_hand == 0)||(@player_hand == 3 && @program_hand == 1)||(@player_hand == 3 && @program_hand == 2)||(@player_hand == 0 && @program_hand == 3)||(@player_hand == 1 && @program_hand == 3)||(@player_hand == 2 && @program_hand == 3)
      start
    end
  end
  
  def direction
    puts "あっちむいて"
    @directions = {
      0 => '上',
      1 => '下',
      2 => '左',
      3 => '右'
    }
    @directions.each { |key, name| puts "#{key}(#{name})" }
  end
  
  def hoi
    @player_finger = @directions[gets.to_i]
    @program_finger = @directions[rand(4)]
    puts "ほい"
    puts '-----------'
    puts "あなた:#{@player_finger}"
    puts "相手:#{@program_finger}"
    puts '-----------'
    game
  end
  
  def game
    if @player_finger == @program_finger
      puts "勝利!"
      start
    else 
      start
    end
  end
end

j = Janken.new
j.start