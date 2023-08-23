class Customer < ApplicationRecord
    
    validates :name, presence: true
    validates :phone, presence: true

    has_many :requests
    accepts_nested_attributes_for :requests, reject_if: :all_blank, allow_destroy: true

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
