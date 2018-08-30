class TeamMembersController < ApplicationController
  def login
  end

  def validate
    team_member = TeamMember.find_by(email: params[:email], password: params[:psw])
    if team_member.present?
      session[:current_user] = team_member.id
      session[:manager] = team_member.managers_id
      redirect_to '/team_members/index'
    else
      redirect_to '/team_members/login'
    end
  end

  def index
  end

  def add
  end

  def show
    @team_members = TeamMember.where(managers_id: session[:manager])
  end

  def reset_password
    @token = params[:token]
  end

  def update
    team_member = TeamMember.find_by(token: params[:token])
    if(params[:psw].eql?(params[:con_psw]))
      team_member.update(password: params[:psw])
      redirect_to '/team_members/index'
    else
      redirect_to '/team_members/reset_password'
    end
  end

  def finalize
    id = params[:optradio].split("&id=")[1].split("&tid=")[0]
    tid = params[:optradio].split("&tid=")[1]
    places = Place.where(team_members_id: tid.to_i)
    places.each do |row|
      row.update(is_final: false)
    end
    place = Place.find_by_id(id)
    place.update(is_final: true) if place.present?
    render "/managers/index"
  end

end
