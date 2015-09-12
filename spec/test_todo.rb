require 'minitest/autorun'
require 'minitest/pride'

require_relative '../bin/todo.rb'

class TodoTest < Minitest::Test

  def test_todo_class_exists
    assert(Todo)
  end

  def test_todo_exists
    td = Todo.new
    assert_equal("Go to sleep", td.add_todo)
  end

end
