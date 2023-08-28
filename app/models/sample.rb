class Sample < ApplicationRecord
  
  belongs_to :request

  after_create :generate_sample_code

  has_one :ph
  accepts_nested_attributes_for :ph, reject_if: :all_blank, allow_destroy: true

  has_one :lime
  accepts_nested_attributes_for :lime, reject_if: :all_blank, allow_destroy: true

  has_one :om
  accepts_nested_attributes_for :om, reject_if: :all_blank, allow_destroy: true

  private
    def generate_sample_code
      update_attribute(:code, "S-#{format("%04d", self.request.id)}-#{format("%02d",self.request.samples.size)}")
    end

end
