class AddToDoTable < ActiveRecord::Migration
    def change
      create_table :todos do |t|
        t.string :task, limit: 150
      end
    end
  end
