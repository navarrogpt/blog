class Post < ApplicationRecord
  
  after_create :set_publish_date

  validates_presence_of :title
  validates_presence_of :content

  def set_publish_date
    self.publish_date = self.created_at
    save
  end
end
