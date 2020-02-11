def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, num=2)
  ((input + " ") * num).chop
end

def start_of_word(input, num)
  input[0..num-1]
end

def first_word(input)
  input.split(" ")[0]
end

def titleize(input)
  no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  output = input.split(" ").map.with_index do |i, index|
    (index == 0 || !no_cap.include?(i)) ? i.capitalize : i
  end
  output.join(" ")
end