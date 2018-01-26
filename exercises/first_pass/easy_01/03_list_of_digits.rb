def digit_list(pos_int)
  pos_int.to_s.chars.map do |num| num.to_i # .map(&:to_i) would do the same
  end
end

p digit_list(65)
p digit_list(2913)