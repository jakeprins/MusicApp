artists = [
["Jack Johnson", "http://www.mtv.com/shared/promoimages/bands/j/johnson_jack/a-z/Jack%20Johnson%2003%20CREDIT%20Hillary%20Walsh.jpg"],
["Eminem", "http://thesource.com/wp-content/uploads/2016/03/eminem-5.jpg"],
["Macklemore", "http://peteryang.com/v02/wp-content/uploads/2013/08/yang_macklemore_0360_FFF.jpg"]
]

artists.each do | name, image|
   Artist.create( name: name, image: image)
end

artist_songs = {}

artist_songs["Jack Johnson"] = [
  ["Banana Pancakes"],
  ["To the sea"],
  ["Good people"]
]

artist_songs["Eminem"] = [
  ["Lose Yourself"],
  ["Till I collapse"],
  ["The real slim shady"]
]

artist_songs["Macklemore"] = [
  ["Thrift Shop"],
  ["Otherside"],
  ["Same Love"]
]

artist_songs.each do | artist_name, songs |
   artist = Artist.find_by( name: artist_name )

   songs.each do | title |
      Song.create( title:title, artist_id: artist.id)
   end
end
