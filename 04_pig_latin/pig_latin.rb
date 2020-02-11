def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  array = string.split(" ")
  array.map! do |i|
    if i.match?(/[A-Z]/)
      i.downcase!
      cap = 1
    end
    if i.match?(/\W/) 
      pun = i[-1]
      i.chop!
    end
    while !vowels.include?(i[0]) || (i[0] == 'u' && i[-1] == 'q')
      i = i[1..-1] + i[0]
    end
    i += "ay"
    cap == 1 ? i.capitalize! : i
    pun != nil ? i += pun : i
  end
  array.join(" ")
end