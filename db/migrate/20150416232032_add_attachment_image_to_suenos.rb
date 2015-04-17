class AddAttachmentImageToSuenos < ActiveRecord::Migration
  def self.up
    change_table :suenos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :suenos, :image
  end
end
