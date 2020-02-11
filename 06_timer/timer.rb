class Timer

  attr_accessor :seconds

  def initialize 
    @seconds = 0
  end
  
  def time_string
    h = @seconds / 3600
    min = (@seconds % 3600) / 60
    sec = @seconds % 60
    "#{padded(h)}:#{padded(min)}:#{padded(sec)}"
  end

  def padded(time)
    time < 10 ? time = "0" + time.to_s : time.to_s
  end

end
