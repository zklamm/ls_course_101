def reverse_words(str)
  words = str.split.each do |word|
    if word.length > 4
      word.reverse!
    end
  end
  words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
