class CommentsController < ApplicationController
  def create
     @comment = current_user.comments.new(params[:comment])
     
     @comment.site_id = :id ;
    if @comment.save
      respond_to do |format|
      format.js
      
    end
    end
    
  end

  def destroy
  end
   
end
