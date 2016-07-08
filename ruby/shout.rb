#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#    words + "!!!" + " :)"
#  end
#end

#Shout.yell_angrily("No")
#Shout.yell_happily("Yes")

# Make a mixin version of the Shout module
module Shout
  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yell_happily(words)
    p words + "!!!" + " :)"
  end
end

# Write two classes representing anything that might shout, and include the Shout module in those classes
class Girl
  include Shout
end

class Boy
  include Shout
end

# Driver code that instantiates instances of the classes and calls the two module methods on each instance
girl = Girl.new
girl.yell_angrily("I'm yelling angrily")
girl.yell_happily("I'm yelling happily")

boy = Boy.new
boy.yell_angrily("I'm yelling more angrily than she was")
boy.yell_happily("I'm yelling more happily than she was")
