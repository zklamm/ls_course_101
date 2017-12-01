statement = "The Flintstones Rock"

count = {}
statement.split.join.chars.map do |char|
  count[char] = statement.count(char)
end

puts count
