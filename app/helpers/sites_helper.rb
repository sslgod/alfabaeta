#encoding: utf-8
module SitesHelper
  def day(int)
    case int
    when 1,21,31,41,51,61,71,81,91,101
      @day = 'день'
    when 2..4, 22..24, 32..34, 42..44, 52..54, 62..64, 72..74, 82..84, 92..94, 102..104
      @day = 'дня'
    when 5..20, 25..30, 35..40, 45..50, 55..60, 65..70, 75..80, 85..90, 95..100
      @day ='дней'
    end
   @day
  end
  def excess(int)
    @excess ='Осталось'
    case int
      
    when 1,21,31
      @excess = 'Остался'
    
    end
    @excess
    
  end
end
