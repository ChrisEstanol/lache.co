class AddSlugToDiarios < ActiveRecord::Migration
  def change
    add_column :diarios, :slug, :string
  end
end
