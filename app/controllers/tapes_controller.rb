class TapesController < ApplicationController
  def index
    @tapes = Tape.all
  end

  def new
    @title = "Add Tape"
    @tape = Tape.new
  end
  
  def show
    @title = "#{@tape.number} #{@tape.description}"
    @tape = Tape.find(params[:id])    
  end
  
  def edit
    @title = "Edit Tape #{@tape.number}"
    @tape = Tape.find(params[:id])
  end
  
  def create
    @tape = Tape.new(params[:tape])
  end
  
  def update
    @tape = Tape.find(params[:id])
  end
  
  def destroy
    @tape = Tape.find(params[:tape])
    @tape.destroy
  end
end