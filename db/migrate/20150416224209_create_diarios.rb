class CreateDiarios < ActiveRecord::Migration
  def change
    create_table :diarios do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
