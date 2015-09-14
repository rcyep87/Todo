require_relative "../db/setup"
require_relative '../lib/all'

class Todo

  def run_todo
    puts "-" * 20
    puts "What task would you like to do?"
    puts "1.) Exit 2.) Add Todo 3.) See list of Todo's"
    print " > "
    response = gets.chomp.to_i
    case response
    when 1 then exit
    when 2 then add_todo
    when 3 then display_todos
    else
      puts "\a"
      puts "Not a valid choice"
    end
  end

  def add_todo
    puts "Please add a todo > "
    tasks = gets.chomp
    Todo.new(task: tasks).save
  end

  def display_todos
    puts "List of Todo's:"
    puts "-" * 20
    Todo.all.each do |tasks|
      puts tasks.task
    end
  end
end

Todo.new.run_todo
