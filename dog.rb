class Dog
    attr_reader :name, :age  #setting up "name" and "age" attribute reader methods

    def name=(value) #attribute writer method for "@name"
        if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end

    def age=(value) #attribute writer method for "@age"
        if value < 0
            raise "An age of #{value} isn't valid!" #data validation
        end
        @age = value
    end

    def move(destination) #instance method
        puts "#{name} runs to the #{destination}." #using instance variables
    end

    def talk  #instance method
        puts "#{@name} says Bark!" #using instance variables
    end

    def report_age #instance variables
        puts "#{@name is {@age} years old." #using instance variables
    end

end

dog = Dog.new  #Creating a new Dog instance
dog.name = "Daisy" #Initializing attributes
dog.age = 3  #Initializing attributes
dog.report_age #Calling instance methods
dog.talk  #Calling instance methods
dog.move("bed") #Calling instance methods

