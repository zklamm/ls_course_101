flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hsh = {}
flintstones.each_with_index do |name, i|
  hsh[name] = i.next
end

puts hsh
