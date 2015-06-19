class MapController < ApplicationController
  def index
    @users = Gmap.all
    @hash = Gmaps4rails.build_markers(@users) do |gmap, marker|
      marker.lat gmap.latitude
      marker.lng gmap.longitude
      marker.infowindow gmap.description
      marker.json({title: gmap.title})
    end
  end
end