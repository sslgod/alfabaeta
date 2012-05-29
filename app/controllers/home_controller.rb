class HomeController < ApplicationController
  def index
    #@users = User.all
    @sites = Site.find_all_by_public(true)
  end
end
