class MainController < ApplicationController
    def home
    end
  
    def about
    end
  
    def contact
    end
    def submit_contact
      name = params[:name]
      email = params[:email]
      message = params[:message]
  
      if name.present? && email.present? && message.present?
        flash[:notice] = "Thank you for your message, we will contact you."
      else
        flash[:alert] = "Please fill out all fields."
      end
  
      redirect_to contact_path
    end  
end
  

