class CreateDirectives < ActiveRecord::Migration
  def change
    create_table :directives do |t|
      t.string :name
      t.text :instructions

      t.timestamps
    end
  end
end
