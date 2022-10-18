class ParentsController < ApplicationController
  def index
    @legosets = LegoSet.all.order(:created_at)
  end

  def show
    @legoset = LegoSet.find(params[:id])
  end
end