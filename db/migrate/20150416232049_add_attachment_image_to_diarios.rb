class AddAttachmentImageToDiarios < ActiveRecord::Migration
  def self.up
    change_table :diarios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :diarios, :image
  end
end
