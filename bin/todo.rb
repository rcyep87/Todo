require_relative "../db/setup"
require_relative '../lib/all'

class Todo

  def run_todo
    puts "What task would you like to add to your Todo app?"
    tasks = gets.chomp
    add_todo(tasks)
    puts "You just added as a task: #{tasks}"
  end

  def add_todo(tasks)
    Todo.new(task: tasks).save
  end
end

Todo.new.run_todo
