class Ph < ApplicationRecord
  
  belongs_to :sample

  private
    def between

    end

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

    def level
      case avg
      when 0..3.5
        "กรดรุนแรงมากที่สุด"
      when 3.5..4.4
        "กรดรุนแรงมาก"
      when 4.5..5.0
        "กรดจัดมาก"
      when 5.1..5.5
        "กรดจัด"   
      when 5.6..6.0
        "กรดปานกลาง"
      when 6.1..6.5
        "กรดเล็กน้อย"
      when 6.6..7.3
        "เป็นกลาง"
      when 7.4..7.8
        "ด่างอ่อน"
      when 7.9..8.4
        "ด่างปานกลาง"
      when 8.5..9.0
        "ด่างจัด"
      when 9.1..14
        "ด่างจัดมาก"  
      end
    end
end
