class CreateConditions < ActiveRecord::Migration
  def self.up
    create_table :conditions do |t|
      t.string :condition1
      t.string :condition2
      t.string :condition3
      t.references :view

      t.timestamps
    end
  end

  def self.down
    drop_table :conditions
  end
end
