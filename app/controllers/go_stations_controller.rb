class GoStationsController < ApplicationController
  def index
    @gostations = GoStation.all
  end
end
