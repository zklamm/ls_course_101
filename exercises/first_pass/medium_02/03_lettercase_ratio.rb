def letter_percentages(str)
  avg = {}
  avg[:lowercase] = str.count('a-z')
  avg[:uppercase] = str.count('A-Z')
  avg[:neither] = str.count('^a-zA-Z')
  avg.each do |letter_case, count|
    avg[letter_case] = count * 100 / str.length.to_f
  end
  avg
end

p letter_percentages('abCdef 123') == {
  lowercase: 50, uppercase: 10, neither: 40
}

p letter_percentages('AbCd +Ef') == {
  lowercase: 37.5, uppercase: 37.5, neither: 25
}

p letter_percentages('123') == {
  lowercase: 0, uppercase: 0, neither: 100
}
