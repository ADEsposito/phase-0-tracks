

  garlic = true
  insurance = true
  currentYear = 2016
  counter = 1

  puts "How many employees will be processed?"
  maxCount = gets.to_i

  while counter <= maxCount

    # What is your name
    puts "What is your name?"
    name = gets.chomp

    # How old are you?
    puts "How old are you?"
    age = gets.to_i

    # What year were you born?
    puts "What year were you born?"
    year = gets.to_i

    # Our company serves garlic bread. Should we order some for you?
    puts "Our company serves garlic bread. Should we order some for you? (y/n)"
    garlicChoice = gets.chomp
    if garlicChoice == "n"
      garlic = false
    else
      garlic = true
    end

    # Would you like to enroll in the company's health insurance?
    puts "Would you like to enroll in the company's health insurance? (y/n)"
    insuranceChoice = gets.chomp
    if insuranceChoice == "n"
      insurance = false
    else
      insurance = true
    end

    # Calculate if age matches birth year
    actualAge = currentYear - year
    if actualAge == age
      age = true
    else
      age = false
    end

    results = "Results inconclusive."

    if age == true && (garlic == true || insurance == true)
      results = "Probably not a vampire."
    end

    if age == false && (garlic == false || insurance == false)
      results = "Probably a vampire."
    end

    if age == false && (garlic == false && insurance == false)
      results = "Almost certainly a vampire."
    end

    if name == "Drake Cula" || name == "Tu Fang"
      results = "Definitely a vampire."
    end

    # Check for suspicious allergies
    finished = false

    puts "Enter allergies (Type 'done' when there are no further allergies to list):"
    until finished
      allergy = gets.chomp

      if allergy == "sunshine"
          results = "Probably a vampire."
          finished = true
      end
      if allergy == "done"
        results = results
        finished = true
      end
    end


    puts results
    counter += 1
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
