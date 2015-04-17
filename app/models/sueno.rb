class Sueno < ActiveRecord::Base

  extend FriendlyId
  friendly_id :nombre, use: :slugged
  belongs_to :user



  has_attached_file :image, :styles => { :large => "600x600>", :small => "300x300>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  scope :next, lambda {|id| where("id > ?",id).order("id ASC") } # this is the default ordering for AR
  scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }

  def next
    Post.next(self.id).first
  end

  def previous
    Post.previous(self.id).first
  end
end
