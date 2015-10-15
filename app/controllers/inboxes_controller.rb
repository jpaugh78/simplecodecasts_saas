class InboxesController < ApplicationController
    def new
       # inbox where user has messages from other users
       @user = User.find(params[:user_id] )
       @inbox = @user.build_inbox
    end
end