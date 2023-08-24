class Request < ApplicationRecord  
  
  belongs_to :customer
  
  has_many :samples
  accepts_nested_attributes_for :samples, reject_if: false, allow_destroy: true
end
