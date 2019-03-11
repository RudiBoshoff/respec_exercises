require 'spec_helper'
require 'zombie'

describe Zombie do
  it "is named Ash" do
    zombie = Zombie.new
    expect(zombie.name).to eql("Ash")
  end

  it 'has no brains' do
    zombie = Zombie.new
    expect(zombie.brains).to be < 1
  end

  it "shouldn't be alive" do
    zombie = Zombie.new
    expect(zombie.alive).to be false
  end

  describe "#hungry?" do
    it 'is starving' do
      zombie = Zombie.new
      expect(zombie.hungry?).to be true
    end
  end
end
