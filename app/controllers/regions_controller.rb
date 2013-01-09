class RegionsController < ApplicationController
  inherit_resources
  
  def api_regions
    render :json => Region.where(continent_id: params[:continent_id]).all.to_json
  end 
end
