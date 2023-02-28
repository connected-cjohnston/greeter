class Greeter

  def greet(name, time = nil)
    formatted_name = name.strip.capitalize

    return "Hello #{formatted_name}" unless time

    if morning?(time)
      "Good morning #{formatted_name}"
    elsif time >= Time.parse('6pm') && time <= Time.parse('10pm')
      "Good evening #{formatted_name}"
    elsif time >= Time.parse('10pm') || time <= Time.parse('6am')
      "Good night #{formatted_name}"
    end
  end

  private

  def morning?(time)
    time >= Time.parse('6am') && time <= Time.parse('12pm')
  end
end
