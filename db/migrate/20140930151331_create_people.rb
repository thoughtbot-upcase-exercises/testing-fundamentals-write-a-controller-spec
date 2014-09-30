class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |table|
      table.string :first_name
    end
  end
end
