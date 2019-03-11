require './person'

# describe Person do
#   it 'creates a new person with a first name and a last name' do
#     person = Person.new("Paul", "Rodgers")
#
#     expect(person.first_name).to eql("Paul")
#     expect(person).to have_attributes(last_name: 'Rodgers')
#   end
# end

# The above can be used but Subjects make things even easier
# Using Subjects

describe Person.new "Paul", "Rodgers" do
  it { is_expected. to have_attributes(first_name: "Paul")}
  it { is_expected.to have_attributes(last_name: "Rodgers")}
end
