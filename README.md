ruby_class_method
=================

Now a days i am learning ruby meta programing, As it's considered  “advanced” of ruby programing where code execute on fly. As expert said it very difficult to read and understand but same time, I am understanding how ruby works.

I digest a lot of ruby core concept, Planing to cover them in next coming post. At present, Let's take a close look, How can we define class methods.

Class method:   

Class methods are declared the same way as normal methods, except that they are prefixed by self, or the class name, followed by a period. These methods are executed at the Class level(Called on a class) and may be called without an object instance.

Let's understand with example:

    # 1st way
    class Person
      def self.play
        p "I want to play"
      end
    end

####In above way, We are defining the methods on  an object (self). The syntax is concise and descriptive. When browsing a file of code, the use of self. makes it very clear that the method is a class method.

    # 2nd way
    class << Person
      def play
        p "I want to play"
      end
    end

####By using class << Person, we are setting self to Person‘s metaclass for the duration of the block. We should prefer this way when we have a class with a lot of class methods.

    # 3rd way 
    class Person
      class << self
        def play
          p "I want to play"
        end
      end
    end

####This is similar to 2nd way, Only different way to define method.  Here we open Person, making self equal to the Person class. Next, we do class << self, making self equal to Person‘s metaclass. When we then define the species method, it is defined on Person‘s metaclass.

    class Person; end
    
    # 4th way
    def Person.play
      p "I want to play"
    end

####This is also one of way to define class methods, We can quickly add methods on the fly to a class. the ones that I see the most.

####Meta programming, add methods on the fly to a class.

    # 5th way 
    Person.instance_eval do
      def play
        p "I want to play"
      end
    end

####The 5th way, instance_eval, actually it's something interesting, I will cover this in next post in detials.
Person.play

###Conclusion

####Class methods can only be called on classes. Hope this helps. If I was unclear or incorrect at any point above, let me know.
