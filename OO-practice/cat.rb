class Cat
    # We want to store info about the characteristics of each cat. 
    # When we store these data in our Cat class, we call them attributes.
    # We store each attribute inside an instance variable.

    # What attributes do we want each cat in our class to have?
    # attributes: breed, origin, name, happiness

    # We want to store info about the behaviors of each cat.
    # To do this, we build instance methods that can be called on a particular cat instance.

    # What methods do we want each cat in our class to have?
    # methods: eat, meow, hiss

    # Attributes can affect what data our methods return (i.e. a method that prints out the cat's name)
    # and methods can affect what data our attributes store (i.e. a method that increments the cat's happiness by 1) 
    
    # The attribute writer macro allows us to write data to our instance variables:

    # attr_writer :breed
    # will generate this code =>
    def breed=(breed)
        @breed = breed
    end

    # The attribute reader macro allows us to expose the data that's in our instance variables:

    # attr_reader :breed
    # will generate this code =>
    def breed
        @breed
    end

end