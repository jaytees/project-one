class MapController < ApplicationController
  def test
    @users = User.all.select(:name, :latitude, :longitude)
  end
end
