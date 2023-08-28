class Lime < ApplicationRecord
  belongs_to :sample

  public  
    def avg
      avg = [self.ph1, self.ph2, self.ph3]
      avg.compact!
      if(avg.size.to_f <= 0)
        return nil
      else
        return (avg.reduce(:+) / avg.size.to_f).round(2)
      end      
    end
end
