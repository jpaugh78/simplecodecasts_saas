class ConversationsController < ApplicationController
    def new
       # inbox where user has messages from other users
       @user = User.find(params[:user_id] )
       @sendTo = params[:sendTo]
       @receiver = User.find(@sendTo).profile.contact_email
    end
end