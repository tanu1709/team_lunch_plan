class UserMailer < ApplicationMailer

  def send_email params, token
    valid_email = EmailVerifier.check(params[:email])
    if(valid_email == true)
      @username = params[:name]
      @password = params[:password]
      @url = "http://localhost:3000/team_members/reset_password?token=" + token.to_s
      mail(:to => params[:email], :subject => "Welcome...! You are now a member of the team.")
    else
      puts "Email doesn't exist"
    end
  end

  def send_notification params, manager, user_id
    team_member = TeamMember.find_by_id(user_id)
    valid_email = EmailVerifier.check(manager.email)
    if(valid_email == true)
      @place_name = params[:pname]
      @address = params[:addr]
      @username = team_member.name
      mail(:to => manager.email, :subject => "Place suggestion for lunch")
      return true
    else
      puts "Email doesn't exist"
      return false
    end
  end

end


