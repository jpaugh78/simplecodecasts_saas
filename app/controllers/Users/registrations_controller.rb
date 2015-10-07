class Users::RegistrationsController < Devise ::RegistrationsController
    def create
        super do |resource|
            if params[:plan] #does the plan variable exist?
                resource.plan_id = params[:plan] #save plan number to db
                if resource.plan_id == 2
                    resource.save_with_payment
                else
                    resource.save
                end
            end
        end
    end
end