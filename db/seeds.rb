Authoring.delete_all
Belonging.delete_all
Song.delete_all
Artist.delete_all
Playlist.delete_all
Category.delete_all

# Song creation
Song.create(title: "Levania")
Song.create(title: "Tumbling Lights")
Song.create(title: "Any Major Dude Will Tell You")
Song.create(title: "Talking Loud")
Song.create(title: "Age Of Man")
Song.create(title: "It Probably Matters")
Song.create(title: "20 Size")
Song.create(title: "Total Eclipse Of The Heart")
Song.create(title: "Dance Yrself Clean")
Song.create(title: "Happy Birthday, Johnny - piano version")
puts "#{Song.count} songs created."

# Artist creation
Artist.create(name: "Jacco Gardner")
Artist.create(name: "The Acid")
Artist.create(name: "Steely Dan")
Artist.create(name: "Manolo Redondo")
Artist.create(name: "Greta Van Fleet")
Artist.create(name: "Interpol")
Artist.create(name: "Mogwai")
Artist.create(name: "Bonnie Tyler")
Artist.create(name: "LCD Soundsystem")
Artist.create(name: "St. Vincent")
puts "#{Artist.count} artists created."

# Create connexions between songs and artists
Authoring.create(song: Song.find_by(title: "Levania"), artist: Artist.find_by(name: "Jacco Gardner"))
Authoring.create(song: Song.find_by(title: "Tumbling Lights"), artist: Artist.find_by(name: "The Acid"))
Authoring.create(song: Song.find_by(title: "Any Major Dude Will Tell You"), artist: Artist.find_by(name: "Steely Dan"))
Authoring.create(song: Song.find_by(title: "Talking Loud"), artist: Artist.find_by(name: "Manolo Redondo"))
Authoring.create(song: Song.find_by(title: "Age Of Man"), artist: Artist.find_by(name: "Greta Van Fleet"))
Authoring.create(song: Song.find_by(title: "It Probably Matters"), artist: Artist.find_by(name: "Interpol"))
Authoring.create(song: Song.find_by(title: "20 Size"), artist: Artist.find_by(name: "Mogwai"))
Authoring.create(song: Song.find_by(title: "Total Eclipse Of The Heart"), artist: Artist.find_by(name: "Bonnie Tyler"))
Authoring.create(song: Song.find_by(title: "Dance Yrself Clean"), artist: Artist.find_by(name: "LCD Soundsystem"))
Authoring.create(song: Song.find_by(title: "Happy Birthday, Johnny - piano version"), artist: Artist.find_by(name: "St. Vincent"))
puts "#{Authoring.count} connexions created between songs and artists."

# Create playlists
Playlist.create(title: "La Playlist du Vendredi #1", featured: true, special: false)
puts "#{Playlist.count} playlists created."

# Create categories
Category.create(name: "Le Cu-culte")
Category.create(name: "L’Uptodate #1")
Category.create(name: "Le Tv/Movie Related")
Category.create(name: "Le Friday Night Fever")
Category.create(name: "Le Frenchie but Chic")
Category.create(name: "Le Concert de la Semaine")
Category.create(name: "Le Guilty Pleasure")
Category.create(name: "Le Hit du Grenier")
Category.create(name: "Le Tout nu !")
Category.create(name: "L’Uptodate #2")
Category.create(name: "Jean-Michel à côté")
puts "#{Category.count} categories created."

# Create connexions between playlists, songs and categories
Belonging.create(song: Song.find_by(title: "Levania"), category: Category.find_by(name: "L’Uptodate #1"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Tumbling Lights"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Any Major Dude Will Tell You"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Talking Loud"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Age Of Man"), category: Category.find_by(name: "Jean-Michel à côté"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "It Probably Matters"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "20 Size"), category: Category.find_by(name: "Le Tout nu !"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Total Eclipse Of The Heart"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Dance Yrself Clean"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
Belonging.create(song: Song.find_by(title: "Happy Birthday, Johnny - piano version"), category: Category.find_by(name: "L’Uptodate #2"), playlist: Playlist.find_by(title: "La Playlist du Vendredi #1"))
puts "#{Belonging.count} connexions created between songs, categories and playlists."

