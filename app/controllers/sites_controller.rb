#encoding: utf-8
class SitesController < ApplicationController
  include SitesHelper 

  def index
    authorize! :index, @user, :message => 'Извините, доступ к данному разделу запрещен.'
    @sites = Site.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sites }
    end
  end







  def show
    
    @site = Site.find(params[:id])
    @comment = Comment.new
    @comments = @site.comments.all
    
    
    
    @timenow =  Time.now
    @pubdate = (((Time.local(@site.active_date.year, @site.active_date.month, @site.active_date.day )).to_i)-((Time.local(@timenow.year, @timenow.month, @timenow.day )).to_i))/60/60/24
    if @pubdate >0
      @day = day(@pubdate)
      @excess = excess(@pubdate)
      @resdate = @excess+" "+(@pubdate.to_s)+" "+@day
    else
      @resdate = 'Тестирование завершено'
    end
  end
 
   
   
   


  





  def new
    @site = Site.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site }
    end
  end

 


  def edit
    @site = Site.find(params[:id])
  end



  def create
    @site = Site.new(params[:site])

    respond_to do |format|
      if @site.save
        format.html { redirect_to @site, notice: 'Site was successfully created.' }
        format.json { render json: @site, status: :created, location: @site }
      else
        format.html { render action: "new" }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    @site = Site.find(params[:id])

    respond_to do |format|
      if @site.update_attributes(params[:site])
        format.html { redirect_to @site, notice: 'Site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    respond_to do |format|
      format.html { redirect_to sites_url }
      format.json { head :no_content }
    end
  end


end
