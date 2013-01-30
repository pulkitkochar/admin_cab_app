class CreatePhones < ActiveRecord::Migration
  def up
    create_table :phones do |p|
      p.integer :number

      p.timestamps
    end
  end

  def down
    drop_table :phones
  end
end
