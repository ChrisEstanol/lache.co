class CreateSuenos < ActiveRecord::Migration
  def change
    create_table :suenos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
