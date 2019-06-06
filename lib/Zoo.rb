class Zoo
  attr_reader :name, :location

  @@zoo = []

  def initialize(name, location)
    @name = name
    @location = location
    @@zoo << self
  end

  def self.all
    # return an array of all zoo instances
    @@zoos
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    # return an array of all unique species (as strings) of the animals in the zoo
    array = []
    self.animals.each do |animal|
      if animal.zoo == self
        array << animal.species
      end
    end
    array.uniq.to_s
  end

  def find_by_species(species)
    # returns an array of all the animals which are of that species

    animals.select { |animal|
      animal.species == species
    }
  end

  def animal_nicknames
    #return an array of all the nick names of the animals that a zoo instance has
    animals_in_zoo = animals.select { |animal|
      animal.zoo == self
    }

    animals_in_zoo.select { |animal|
      animal.species
    }
  end

  def self.find_by_location(location)
    # return an array of all the zoos within that location
    @@zoo.select { |zoo|
      zoo.location == location
    }
  end
end
