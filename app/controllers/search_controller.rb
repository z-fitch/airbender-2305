class SearchController < ApplicationController
  def index
    @facade = AtlaFacade.new(params[:nation])
  end
end