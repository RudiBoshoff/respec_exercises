class SimpleClass
  attr_accessor :message

  def initialize
    puts 'Creating a new instance of the SimpleClass class'
    @message = 'howdy'
  end

  def update_message(new_message)
    @message = new_message
  end
end

# some_text = SimpleClass.new
# puts some_text.message
# some_text.update_message('new message')
# puts some_text.message
