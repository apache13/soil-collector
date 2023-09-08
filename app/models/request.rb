class Request < ApplicationRecord  
  
  belongs_to :customer
  
  after_create :generate_request_code

  has_many :samples
  accepts_nested_attributes_for :samples, reject_if: false, allow_destroy: true

  private
    def generate_request_code
      update_attribute(:code, "R-#{format("%04d", self.id)}")
    end
    def self.ransackable_attributes(auth_object = nil)
      ["code", "receive"]
    end

end
