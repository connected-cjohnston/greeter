class Greeter

  def greet(name, time = nil)
    formatted_name = name.strip.capitalize

    return "Hello #{formatted_name}" unless time

    if time >= Time.parse('6am') && time <= Time.parse('12pm')
      "Good morning #{formatted_name}"
    elsif time >= Time.parse('6pm') && time <= Time.parse('10pm')
      "Good evening #{formatted_name}"
    elsif time >= Time.parse('10pm')
      "Good night #{formatted_name}"
    end
  end
end
