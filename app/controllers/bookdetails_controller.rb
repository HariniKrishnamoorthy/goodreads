class BookdetailsController < ApplicationController
	def create
		
		book = Bookdetail.new(bookname:params[:bookdetails][:bookname],author:params[:bookdetails][:author],
								price:params[:bookdetails][:price],description:params[:bookdetails][:description])
			book.genre = Genre.find_by_genre(params[:bookdetails][:genre])
		if book.save
			render json: book
		else
			render json: {error: "failed"}
		end
	end
end
