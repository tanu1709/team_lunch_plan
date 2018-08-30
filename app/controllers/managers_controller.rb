class ManagersController < ApplicationController

  def login
  end

  def validate
    manager = Manager.find_by(email: params[:uname], password: params[:psw])
    if manager.present?
      session[:manager] = manager.id
      redirect_to '/managers/index'
    else
      redirect_to '/managers/login'
    end
  end

  def index
  end

  def show
    manager = Manager.first
    @team_members = manager.team_members
  end

  def add
  end

  def insert
    team_member = TeamMember.find_by(email: params[:name])
    if !team_member.present?
      token = rand(100) * 900000 + Time.new.sec * 987654321 + rand(10000) * 5600000
      UserMailer.send_email(params, token).deliver_now
      m = Manager.first
      p m
      TeamMember.create!(name: params[:name], email: params[:email], password: params[:password], managers_id: m.id, token: token )
      redirect_to '/managers/index'
    end
  end

end
