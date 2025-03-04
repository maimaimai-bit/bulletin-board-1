class BoardsController < ApplicationController
  def index
    @boards = Board.all
    
    render({ :template => "boards/index" })
  end
  
  def show
    @board = Board.find(params.fetch(:id))
    
    render({ :template => "boards/show" })
  end
  
  def create
    @board = Board.new
    @board.name = params.fetch(:name)
    
    if @board.valid?
      @board.save
      redirect_to("/boards", { :notice => "Board created successfully." })
    else
      redirect_to("/boards", { :alert => @board.errors.full_messages.to_sentence })
    end
  end
end 
