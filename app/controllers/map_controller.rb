class MapController < ApplicationController
  def map

    #find aswell owner in here
    @drops = Drop.all.select(:latitude, :longitude)
  end
end
