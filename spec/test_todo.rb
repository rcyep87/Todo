require 'minitest/autorun'
require 'minitest/pride'

require_relative '../bin/todo.rb'

class TodoTest < Minitest::Test

  def test_todo_class_exists
    assert(Todo)
  end

  def test_todo_exists_and_passes_arg
    td = Todo.new
    assert_equal("Go to sleep", td.add_todo("Go to sleep"))
  end

  def test_run_todo
    td = Todo.new
    assert_equal("You just added as a task: Go to sleep!", td.run_todo)
  end

end
