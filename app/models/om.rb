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

    def level
      case self.OM
      when 0..0.5
        "ต่ำมาก"
      when 0.5..1.0
        "ต่ำ"
      when 1.0..1.5
        "ค่อนข้างต่ำ"
      when 1.5..2.5
        "ปานกลาง"   
      when 2.5..3.5
        "ค่อนข้างสูง"
      when 3.5..4.5
        "สูง"
      when 4.5..100
        "สูงมาก"
      end
    end
end
