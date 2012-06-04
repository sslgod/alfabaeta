#encoding: utf-8
module SitesHelper
  def day(int)
    case int
    when 1,21,31
      @day = 'день'
    when 2..4, 22..24
      @day = 'дня'
    when 5..20, 25..30
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
