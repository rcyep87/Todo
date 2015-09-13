require_relative "../db/setup"
require_relative '../lib/all'

class Todo

  def run_todo
    puts "Current Todo list:"
    display_todos
    puts "-" * 20
    puts "What task would you like to add to your Todo app?"
    tasks = gets.chomp
    add_todo(tasks)
    puts "You just added as a task: #{tasks}"
  end

  def add_todo(tasks)
    Todo.new(task: tasks).save
  end

  def display_todos
    Todo.all.each do |tasks|
      puts tasks.task
    end
  end
end

Todo.new.run_todo

# ~> Errno::ENOENT
# ~> No such file or directory @ rb_sysopen - config/database.yml
# ~>
# ~> /Users/ryep/theironyard/week3/day4/Todo/db/setup.rb:4:in `initialize'
# ~> /Users/ryep/theironyard/week3/day4/Todo/db/setup.rb:4:in `open'
# ~> /Users/ryep/theironyard/week3/day4/Todo/db/setup.rb:4:in `<top (required)>'
# ~> /Users/ryep/theironyard/week3/day4/Todo/bin/todo.rb:1:in `require_relative'
# ~> /Users/ryep/theironyard/week3/day4/Todo/bin/todo.rb:1:in `<main>'
