require_relative "../db/setup"
require_relative '../lib/all'

class Todo

  # def initialize
  #   @todo = []
  # end

  def run_todo
    puts "What task would you like to add to your Todo app?"
    task = gets.chomp
    add_todo(task)
    "You just added as a task: #{task}"
  end

  def add_todo(task)
    task
  end

end

# run = Todo.new
# run.run_todo


