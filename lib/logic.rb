module Winlines
  def check_for_winner(arr)
    who_won(arr[0]) if line1_4_check(arr)
    who_won(arr[3]) if line2_check(arr)
    who_won(arr[6]) if line3_check(arr)

    who_won(arr[1]) if line5_check(arr)
    who_won(arr[8]) if line6_check(arr)

    who_won(arr[4]) if line7_8_check(arr)
  end

  def line1_4_check(arr)
    arr[0] == arr[1] && arr[1] == arr[2] || arr[0] == arr[3] && arr[3] == arr[6]
  end

  def line2_check(arr)
    arr[3] == arr[4] && arr[4] == arr[5]
  end

  def line3_check(arr)
    arr[6] == arr[7] && arr[7] == arr[8]
  end

  def line5_check(arr)
    arr[1] == arr[4] && arr[4] == arr[1]
  end

  def line6_check(arr)
    arr[2] == arr[5] && arr[5] == arr[8]
  end

  def line7_8_check(arr)
    arr[2] == arr[4] && arr[4] == arr[6] || arr[0] == arr[4] && arr[4] == arr[8]
  end

  def who_won(fig)
    case fig
    when "X"
      puts "Player 1 with (X) Wins"
      exit
    when "O"
      puts "Player 2 with (O) Wins"
      exit
    end
  end
end
