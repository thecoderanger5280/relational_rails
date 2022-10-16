class ParentsController < ApplicationController
  def index
    @legosets = LegoSet.all
  end
end