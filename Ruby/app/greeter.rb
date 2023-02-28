class Greeter

  def greet(name, time = nil)
    formatted_name = name.strip.capitalize

    if time && time >= Time.parse('6am') && time <= Time.parse('12pm')
      return "Good morning #{formatted_name}"
    elsif time && time >= Time.parse('6pm') && time <= Time.parse('10pm')
      return "Good evening #{formatted_name}"
    end

    "Hello #{formatted_name}"
  end
end
