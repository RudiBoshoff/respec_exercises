# Imagine that you have a spec file and it contains two types of tests (Examples): positive functional tests and negative (error) tests.

describe "An Example Group with positive and negative Examples" do
  context "when testing Ruby's built-in math library" do

    it "can do normal numeric operations", positive: true do
      expect(1 + 2).to eq(3)
    end

    it "generates an error when expected", negative: true do
      expect{1 / 0}.to raise_error(ZeroDivisionError)
    end
  end
end
