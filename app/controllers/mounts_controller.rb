class MountsController < ApplicationController
  inherit_resources

  def api_mounts
    if params[:continent_id].present?
      render :json => Continent.find(params[:continent_id]).mounts.to_json
    elsif params[:region_id].present?
      render :json => Mount.where(region_id: params[:region_id]).all.to_json
    end
  end 
end
