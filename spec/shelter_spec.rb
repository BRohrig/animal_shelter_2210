require 'rspec'
require './lib/shelter'

RSpec.describe Shelter do

  # Iteration 1
  describe '#initialize' do
    it 'is a Shelter' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter).to be_a(Shelter)
    end

    it 'can read the name' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.name).to eq('Denver Animal Shelter')
    end

    it 'can read the capacity' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.capacity).to eq(5)
    end

    it 'has no pets by default' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.pets).to eq []
    end
  end

  # Iteration 2
  describe '#add_pet' do
    it 'returns a list of pets' do

      shelter = Shelter.new('Denver Animal Shelter', 5)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')
      shelter.add_pet('Spot')
      shelter.add_pet('Jonesy')

      expect(shelter.pets).to eq(['Salem', 'Beethoven', 'Spot', 'Jonesy'])
    end
  end 

  describe '#call_pets' do
      it 'returns a list of names with exclamation points appended' do

        shelter = Shelter.new('Denver Animal Shelter', 5)
        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        shelter.add_pet('Spot')
        shelter.add_pet('Jonesy')

        expect(shelter.call_pets).to eq(['Salem!', 'Beethoven!', 'Spot!', 'Jonesy!'])
      end
    end

  describe '#over_capacity?' do
    it 'returns correct capacity boolean' do

      shelter = Shelter.new("Denver Animal Shelter", 3)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')

      expect(shelter.over_capacity?).to be false
    end
  end

  describe '#over_capacity?' do 
    it 'returns correct capacity boolean' do

      shelter = Shelter.new("Denver Animal Shelter", 3)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')
      shelter.add_pet('Muffin')

      expect(shelter.over_capacity?).to be false
    end
  end

  describe '#over_capacity?' do 
    it 'returns correct capacity boolean' do

      shelter = Shelter.new("Denver Animal Shelter", 3)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')
      shelter.add_pet('Muffin')
      shelter.add_pet('Tato')

      expect(shelter.over_capacity?).to be true
    end
  end

  describe '#adopt' do
    it 'removes a pet successfully' do

      shelter = Shelter.new("Denver Animal Shelter", 3)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')
      shelter.add_pet('Muffin')
      shelter.add_pet('Tato')
      shelter.adopt

      expect(shelter.over_capacity?).to be false
    end
  end
      

end