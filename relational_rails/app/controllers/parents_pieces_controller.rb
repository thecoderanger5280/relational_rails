class ParentsPiecesController < ApplicationController
  def index
    @parent = LegoSet.find(params[:parent_id])
  end
end