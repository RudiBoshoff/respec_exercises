require "./lib/calculator"

RSpec.describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5,2)).to eql(7)
    end

    it "returns the sum of three numbers" do
      calculator = Calculator.new
      expect(calculator.add(5,2,7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3,2)).to eql(6)
    end
  end

  describe "#subtract" do
    it "returns the result of a number minus another number" do
      calculator = Calculator.new
      expect(calculator.subtract(4,5)).to eql(-1)
    end

    it "returns the result of a number minus another number" do
      calculator = Calculator.new
      expect(calculator.subtract(-4,5)).to eql(-9)
    end

    it "returns the result of a number minus another number" do
      calculator = Calculator.new
      expect(calculator.subtract(3.1,1.1)).to eql(2.0)
    end
  end

  describe "#divide" do
    it "divises one number by another" do
      calculator = Calculator.new
      expect(calculator.divide(10,2)).to eql(5.0)
    end
  end
end
