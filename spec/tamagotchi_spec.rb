require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  # before() do
  #   Tamagotchi.clear()
  # end

  describe('#initialize') do
    it("sets the name and life levels of a new Tamagotchi") do
      tom = Tamagotchi.new("Coriander")
      expect(tom.name()).to(eq("Coriander"))
      expect(tom.food_level()).to(eq(10))
      expect(tom.happiness_level()).to(eq(10))
      expect(tom.energy_level()).to(eq(10))
    end
  end

  describe('#is_alive?') do
    it("says the Tamagotchi is alive if food level is above 0") do
      tom = Tamagotchi.new("Coriander")
      expect(tom.is_alive?()).to(eq(true))
    end
    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("Evil Coriander")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end

end