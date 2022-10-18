class ParentsController < ApplicationController
  def index
    @legosets = LegoSet.all.order(:created_at)
  end

  def show
    @legoset = LegoSet.find(params[:id])
    @piece_count = @legoset.pieces.count
  end
end