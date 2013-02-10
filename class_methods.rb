# 1st way
class Person
  def self.play
    p "I want to play"
  end
end
 
# 2nd way 
class Person
  class << self
    def play
      p "I want to play"
    end
  end
end
 


#Meta programming, add methods on the fly to a class.
class Person; end

# 3rd way
class << Person
  def play
    p "I want to play"
  end
end
 
# 4th way 
Person.instance_eval do
  def play
    p "I want to play"
  end
end

# 5th way
def Person.play
  p "I want to play"
end


Person.play