class Animal
  attr_accessor :weight
  attr_reader :species, :nickname

  @@animals = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo

    @@animals << self
  end

  def self.all
    #return an array of all the animal instances
    @@animals
  end

  def zoo
    # return the zoo instance that the instance belongs to
    @zoo
  end

  def self.find_by_species(species)
    # return an array of all the animals, which are of that species
    @@animals.select { |animal|
      animal.species = species
    }
  end
end
