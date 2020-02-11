class Book

  def title=(string)
    no_cap = ["in", "the", "of", "and", "a", "an"]
    array = string.split(" ")
    array.map!.with_index do |i, index|
      (index == 0 || !no_cap.include?(i)) ? i.capitalize : i
    end
  @title = array.join(" ")
  end

  def title
    @title
  end
  
end