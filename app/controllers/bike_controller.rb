class BikeController < ApplicationController

  def index
    render({:template => "bike_templates/index.html.erb"})
  end



end