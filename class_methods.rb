class Person
  def self.species
    p "Homo Sapien"
  end
end
 
class Person
  class << self
    def species
      p "Homo Sapien"
    end
  end
end
 
class << Person
  def species
    p "Homo Sapien"
  end
end
 
Person.instance_eval do
  def species
    p "Homo Sapien"
  end
end
 
def Person.species
  p "Homo Sapien"
end

Person.species