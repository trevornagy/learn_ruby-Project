class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
	Time.at(@seconds).utc.strftime("%T")
  end

end
