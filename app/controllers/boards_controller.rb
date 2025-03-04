class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end
  
  def show
    @board = Board.find(params[:id])
    @posts = @board.posts
    
    render({ :template => "boards/show" })
  end
  
  def create
    @board = Board.new
    @board.name = params[:name]
    
    if @board.save
      redirect_to "/boards", notice: "Board created successfully."
    else
      redirect_to "/boards", alert: "Board could not be created."
    end
  end
end 
