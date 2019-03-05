Authoring.delete_all
Belonging.delete_all
Song.delete_all
Artist.delete_all
Playlist.delete_all
Category.delete_all

# Playlist #1

puts "Creating Playlist #1."

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
Playlist.create(
  title: "La Playlist du Vendredi #1",
  featured: false,
  special: false,
  deezer_id: "5132316144",
  spotify_link: "https://open.spotify.com/playlist/67th0j6iVijwFYVb435eGu",
  description: "A tous les amateurs de musique, bonne écoute! 😌"
  )
playlist2 = Playlist.create(title: "La Playlist du Vendredi #2", featured: false, special: false, deezer_id: "5159360524", spotify_link: "https://open.spotify.com/playlist/1nXiRFgarZ88Arf85kz9Gf")
puts "#{Playlist.count} playlists created."

# Create categories
Category.create(name: "Le Cu-culte", emoji: "⭐️")
Category.create(name: "L’Uptodate #1", emoji: "👌")
Category.create(name: "Le Tv/Movie Related", emoji: "🍿")
Category.create(name: "Le Friday Night Fever", emoji: "🕺")
Category.create(name: "Le Frenchie but Chic", emoji: "🍷")
Category.create(name: "Le Concert de la Semaine", emoji: "🎤")
Category.create(name: "Le Guilty Pleasure", emoji: "🍩")
Category.create(name: "Le Hit du Grenier", emoji: "👵🏻")
Category.create(name: "Le Tout nu !", emoji: "🍑")
Category.create(name: "L’Uptodate #2", emoji: "👌")
Category.create(name: "Jean-Michel à côté", emoji: "👨‍🎤")
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

# Playlist #2

puts "Creating Playlist #2."

Authoring.create(song: Song.create(title: "Death In Midsummer"), artist: Artist.create(name: "Deerhunter"))
Authoring.create(song: Song.create(title: "So You’ll Aim Toward the Sky"), artist: Artist.create(name: "Grandaddy"))
Authoring.create(song: Song.create(title: "Perfecto"), artist: Artist.create(name: "Hotel"))
Authoring.create(song: Song.create(title: "Winning"), artist: Artist.create(name: "Santana"))
Authoring.create(song: Song.create(title: "Crush"), artist: Artist.create(name: "Cigarettes After Sex"))
Authoring.create(song: Song.create(title: "MmmBop"), artist: Artist.create(name: "Hanson"))
Authoring.create(song: Song.create(title: "La Forêt"), artist: Artist.create(name: "Lescop"))
Authoring.create(song: Song.create(title: "Old Pine"), artist: Artist.create(name: "Ben Howard"))
Authoring.create(song: Song.create(title: "You & Me"), artist: Artist.create(name: "Disclosure"))
Authoring.create(song: Song.create(title: "Future Hates Me"), artist: Artist.create(name: "The Beths"))
puts "#{Authoring.count} connexions created between #{Song.count} songs and #{Artist.count} artists."

Belonging.create(song: Song.find_by(title: "Death In Midsummer"), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "So You’ll Aim Toward the Sky"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Winning"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Perfecto"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "La Forêt"), category: Category.find_by(name: "Jean-Michel à côté"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Old Pine"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Crush"), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "MmmBop"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "You & Me"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Future Hates Me"), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist2)
puts "#{Belonging.count} connexions created between songs, #{Category.count} categories and #{Playlist.count} playlists."

# Playlists

puts "Creating Playlist #3."
playlist3 = Playlist.create(title: "La Playlist du Vendredi #3", featured: false, special: false, deezer_id: "5188594344", spotify_link: "https://open.spotify.com/playlist/2hDKWbkXmeVdzKymUUWNSz")
puts "Creating Playlist #4."
playlist3 = Playlist.create(title: "La Playlist du Vendredi #4", featured: false, special: false, deezer_id: "5213886284", spotify_link: "https://open.spotify.com/playlist/0B7E6AkrvaAXjHImtUfJyd")
puts "Creating Playlist #5."
playlist3 = Playlist.create(title: "La Playlist du Vendredi #5", featured: true, special: false, deezer_id: "5298910202", spotify_link: "https://open.spotify.com/playlist/6Ia5Ro3ccoOQTgYExFmuX3")

puts "#{Playlist.count} playlists created."










