class ParentsController < ApplicationController
  def index
    @legosets = LegoSet.all
  end

  def show
    @legoset = LegoSet.find(params[:id])
  end
end