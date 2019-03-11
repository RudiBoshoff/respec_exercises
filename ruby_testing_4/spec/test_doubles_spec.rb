# RSpec Doubles/Mocks and RSpec Stubs

# What is a double?
# Test double is a generic term for any object
# that stands in for a real object during a test
# (think "stunt double")

# What is a stub?
# a stub is often called a Method Stub,
# it’s a special type of method that “stands in”
# for an existing method, or for a method that
# doesn’t even exist yet.

require './test_doubles'
describe ClassRoom do
  it 'the list_student_names method should work correctly' do
    student1 = instance_double('student')
    student2 = instance_double('student')

    allow(student1).to receive(:name) { 'John Smith' }
    allow(student2).to receive(:name) { 'Jill Smith' }

    # Old syntax:
    # allow(student1).stub(:name).and_return( 'John Smith')
    # allow(student2).stub(:name).and_return( 'Jill Smith')

    cr = ClassRoom.new [student1, student2]
    expect(cr.list_student_names).to eql('John Smith, Jill Smith')
  end
end
