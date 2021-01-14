def slot

  def slot_coin
    puts "----------"
    puts "残りのコイン数#{@coin}"
    puts "ポイント#{@point}"
    puts "何コイン入れますか？"
    puts "１（１０コイン）２（３０コイン）３（５０コイン）４（やめとく）"
    puts "----------"
      @coin_number = gets.to_i
        if @coin_number == 1 && @coin >= 10
          @coin -= 10
        elsif @coin_number == 2 && @coin >= 30
          @coin -= 30
        elsif @coin_number == 3 && @coin >= 50
          @coin -= 50
        elsif @coin_number == 4
         puts "中止します"
          exit
        else
            puts "コインが足りないか、英数字になってるか、他の数字を押してるよ"
            slot_coin
        end
  end
slot_coin
  left_high = rand(9)
  left_center = rand(9)
  left_low = rand(9)
  center_high = rand(9)
  center_center = rand(9)
  center_low = rand(9)
  right_high = rand(9)
  right_center = rand(9)
  right_low = rand(9)
  
  puts "エンターを3回押しましょう"
  enter = gets
  puts "-----------------"
  puts "|#{left_high}|||
|#{left_center}|||
|#{left_low}|||"
  enter = gets
  puts "-----------------"
  puts "|#{left_high}|#{center_high}||
|#{left_center}|#{center_center}||
|#{left_low}|#{center_low}||"
  enter = gets
  puts "-----------------"
  puts "|#{left_high}|#{center_high}|#{right_high}|
|#{left_center}|#{center_center}|#{right_center}|
|#{left_low}|#{center_low}|#{right_low}|"

  
  if @coin == 0
    puts "コインが尽きました終了します"
    return false
  elsif left_center == center_center || center_center == right_center || left_high == center_high || \
    center_high == right_high || left_low == center_low || center_low == right_low
    puts "揃いました"
    get_coin = 30*@coin_number
    puts "#{get_coin}コイン獲得！"
    puts "#{get_coin}ポイント獲得！"
    @coin += get_coin
    @point += get_coin
    return true
  else
    return true
  end
end
  @coin = 100
  @point = 0

next_game = true

while next_game do
  next_game = slot
end