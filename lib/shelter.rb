class Shelter
    attr_reader :name, :capacity, :pets

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
    end

    def add_pet(pet)
        @pets.push(pet)
    end

    def call_pets
        called_pets = []

        @pets.each do |pet|
            called_pets.push("#{pet}!")
        end

        called_pets
    end

    def over_capacity?
        if @pets.length <= @capacity then false
        else true
        end
    end

end