class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :price
  validates :title, :description, :image_url, presence: true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :allow_blank => false, :format => {
      :with => %r{\.(gif|jpg|png)}
  }
end
