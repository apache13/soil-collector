class Om < ApplicationRecord
  belongs_to :sample

  public  
    def FeSO4_Avg
      avg = [self.FeSO4_1, self.FeSO4_2, self.FeSO4_3]
      avg.compact!
      if(avg.size.to_f <= 0)
        return nil
      else
        return (avg.reduce(:+) / avg.size.to_f).round(2)
      end      
    end
end
