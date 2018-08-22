g = User.find_by_email("geo@gmail.com").genres
@books = []
g.each do |genre|
Bookdetail.where(genre_id: genre.id).each {|b| @books.push(b)}
end

g = User.find_by_email("geo@gmail.com").genres
genre_ids = []
g.each {|genre| genre_ids.push(genre.id)}
Bookdetail.where("genre_id in (#{genre_ids.join(',')})")