class ClassRoom

  def initialize(students)
    @students = students

  end

  def list_student_names
    @students.map do |student|
      student.name
    end.join(', ')
    
    # is the same as
    # @students.map(&:name).join(',')

    # map(&:name) takes an enumerable object
    # and runs the name method for each element/tag,
    # outputting each returned value from the method.
  end
end
