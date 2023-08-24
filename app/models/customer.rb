class Customer < ApplicationRecord
    
    validates :name, presence: true
    validates :phone, presence: true

    has_many :requests
    accepts_nested_attributes_for :requests, reject_if: :all_blank, allow_destroy: true

    after_create :generate_customer_code

  private
    def generate_customer_code
      update_attribute(:code, "C-#{format("%04d", self.id)}")
    end

  public  
    def display
      return "#{self.code} #{self.name}"
    end

    def samples        
        samples = Array.new
        self.requests.each do |request|
            request.samples.each do |sample|
                samples.push(sample)
            end            
        end
        return samples
    end
end
