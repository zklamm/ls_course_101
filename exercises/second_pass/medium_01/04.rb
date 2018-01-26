# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row
# of switches and toggle every one of them. You go back to the beginning, and
# on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass,
# you go back again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns
# an Array that identifies which lights are on after n repetitions.

# input: number of switches, n
# output: ary that tells us which lights are on
# logic: bank = (1..n).to_a.map {|| false}
# 1.upto(bank.size) do |i| bank.map.with_index do |switch, idx| toggle switch if (idx + 1)
# % i == 0, return bank
# bank map.with_index do |switch, idx| (idx + 1) if switch

def switch(n)
  bank = (1..n).to_a.map { |_| false }
  1.upto(n) do |i|
    bank.each_with_index do |switch, idx|
      bank[idx] = !bank[idx] if (idx + 1) % i == 0
    end
  end
  bank.map.with_index { |switch, idx| idx + 1 if switch }.compact
end

p switch(100)

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
