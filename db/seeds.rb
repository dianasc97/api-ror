Movie.delete_all

5.times do |i|
    Movie.create name: "Movie #{i}"
end