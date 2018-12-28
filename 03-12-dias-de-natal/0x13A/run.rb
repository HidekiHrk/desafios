# frozen_string_literal: true

module DozeDiasDeNatal
  gifts = [
    'partridge in a pear tree',
    'turtle doves',
    'French hens',
    'calling birds',
    'golden rings',
    'geese a-laying',
    'swans a-swimming',
    'maids a-milking',
    'ladies dancing',
    'lords a-leaping',
    'pipers piping',
    'drummers drumming'
  ]

  12.times do |i|
    j = i + 1

    day = "#{j}th"
    day = '1st' if j == 1
    day = '2nd' if j == 2
    day = '3rd' if j == 3

    puts <<~HEREDOC
      On the #{day} of Christmas
      My true love gave to me
    HEREDOC

    gifts[0..i].reverse.each do |gift|
      quantity = gifts.find_index(gift) + 1

      if j == 1 && quantity == 1
        puts "A #{gift}."
      elsif j > 1 && quantity == 1
        puts "And a #{gift}."
      else
        puts "#{quantity} #{gift},"
      end
    end

    puts
  end
end