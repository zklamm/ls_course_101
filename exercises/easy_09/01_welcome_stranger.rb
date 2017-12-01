def greetings(name, info)
  name = name.join(' ')
  info = info.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{info} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
