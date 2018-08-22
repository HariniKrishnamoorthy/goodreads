class UsersController < ApplicationController



def create
		
	@user = User.new(firstname:params[:user][:firstname],lastname:params[:user][:lastname],email:params[:user][:email],password:params[:user][:password])
	#byebug
	params[:user][:selected_genre].split(',').each do |genre|
		@user.genres.push(Genre.find_by_genre(genre))
	end
	if @user.save
		render :json => {user: @user}

		#flash[:notice]  = 'Sign in successful'
	else
		render :json => {error: @user.errors}
	end
end
def show
	
	g = User.find_by_email(params[:email]).genres
	genre_ids = []
	g.each {|genre| genre_ids.push(genre.id)}
	@books = Bookdetail.where("genre_id in (#{genre_ids.join(',')})")
	render :json => {books: @books}
end


end
