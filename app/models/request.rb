class Request < ApplicationRecord
  
  validates :receive, presence: true

  belongs_to :customer
  has_many :samples
  accepts_nested_attributes_for :samples, reject_if: :all_blank, allow_destroy: true
end
