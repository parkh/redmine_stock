class Product < ActiveRecord::Base

  belongs_to :issue
  
  validates :title, :produced_at, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  
end
