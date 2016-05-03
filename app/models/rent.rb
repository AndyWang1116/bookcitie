class Rent < ActiveRecord::Base
  belongs_to :user
  has_many :books
  accepts_nested_attributes_for :books
end
