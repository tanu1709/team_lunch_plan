class PlacesController < ApplicationController

  def add
  end

  def suggested_places_add
    id = session[:current_user]
    Place.create!(name: params[:pname], address: params[:addr], team_members_id: id.to_i )
    manager_id = session[:manager]
    manager = Manager.find_by_id(manager_id)
    status = UserMailer.send_notification(params, manager, id).deliver_now
    if status
      render '/team_members/index'
    else
      render 'places/add'
    end
  end

end
