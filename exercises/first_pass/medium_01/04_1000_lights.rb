def light_switch(n)
  lights = {}
  1.upto(n) { |i| lights[i] = false }

  round = 1
  until round > n
    (1..n).each do |i|
      lights[i] = !lights[i] if i % round == 0
    end
    round += 1
  end

  lights.select { |_, status| status }.keys
end

p light_switch(5)
p light_switch(10)
p light_switch(1000)
