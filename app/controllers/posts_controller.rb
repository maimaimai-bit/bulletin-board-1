class PostsController < ApplicationController
  def create
    @post = Post.new
    @post.title = params.fetch(:title)
    @post.body = params.fetch(:body)
    @post.expires_on = params.fetch(:expires_on)
    @post.board_id = params.fetch(:board_id)
    
    if @post.valid?
      @post.save
      redirect_to("/boards/#{@post.board_id}", { :notice => "Post created successfully." })
    else
      redirect_to("/boards/#{@post.board_id}", { :alert => @post.errors.full_messages.to_sentence })
    end
  end
end 
