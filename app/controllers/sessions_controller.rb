class SessionsController < ApplicationController
	 protect_from_forgery with: :null_session
	def show

		render json: User.all

	end
	def index
		
			  current_user = User.find{|x| x.email == params[:email] && x.password == params[:password]}
      if current_user.present?
      
          session[:user_id] = current_user.id
            render json: {sucess: "logged in successfully"}, status: 201
        else
            render json: {error: "Incorrect username or password"}, status: 401
        
        end

	   
	     
	      	

	end
	
	
	
end


