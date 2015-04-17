class AddSlugToSuenos < ActiveRecord::Migration
  def change
    add_column :suenos, :slug, :string
  end
end
