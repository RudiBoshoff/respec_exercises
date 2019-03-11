require './dog'

# describe Dog do
#   context 'dogs should always be walked no matter what' do
#     it 'should be able to create and walk a good dog' do
#       dog = Dog.new true
#       dog.walk_dog
#
#       expect(dog.good_dog).to be true
#       expect(dog.has_been_walked).to be true
#     end
#
#     it 'should be able to create and walk a bad dog' do
#       dog = Dog.new false
#       dog.walk_dog
#
#       expect(dog.good_dog).to be false
#       expect(dog.has_been_walked).to be true
#     end
#   end
# end

# An easy way to share reusable code is to use Helpers
# Helpers are basically regular Ruby methods which you share across examples.

# Using Helpers

describe Dog do
  # Helper method
  def create_and_walk_dog(good_or_bad)
    dog = Dog.new(good_or_bad)
    dog.walk_dog
    dog
  end
  context 'dogs should always be walked no matter what' do
    it 'should be able to create and walk a good dog' do
      dog = create_and_walk_dog true
      expect(dog.good_dog).to be true
      expect(dog.has_been_walked).to be true
    end

    it 'should be able to create and walk a bad dog' do
      dog = create_and_walk_dog false
      expect(dog.good_dog).to be false
      expect(dog.has_been_walked).to be true
    end
  end
end
