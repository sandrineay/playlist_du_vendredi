puts "Deleting all data."
Authoring.delete_all
Belonging.delete_all
Song.delete_all
Artist.delete_all
Playlist.delete_all
Category.delete_all
puts "Deleting data: done! ✅"

# Create categories
puts "Creating categories"
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
Category.create(name: "Le Jean-Michel à côté", emoji: "👨‍🎤")
puts "#{Category.count} categories created."

# Playlists
puts "Creating playlists."
playlist1 = Playlist.create(
  title: "La Playlist du Vendredi #1",
  featured: false,
  special: false,
  deezer_uid: "5132316144",
  spotify_link: "https://open.spotify.com/playlist/67th0j6iVijwFYVb435eGu",
  description: "A tous les amateurs de musique, bonne écoute! 😌"
)
playlist2 = Playlist.create(
  title: "La Playlist du Vendredi #2",
  featured: false,
  special: false,
  deezer_uid: "5159360524",
  spotify_link: "https://open.spotify.com/playlist/1nXiRFgarZ88Arf85kz9Gf"
)
playlist3 = Playlist.create(
  title: "La Playlist du Vendredi #3",
  featured: false,
  special: false,
  deezer_uid: "5188594344",
  spotify_link: "https://open.spotify.com/playlist/2hDKWbkXmeVdzKymUUWNSz",
  description: "Ce vendredi est marqué par la triste disparition de Pete Shelley, fondateur des Buzzcocks, groupe emblématique de la vague Punk fin des années 70. Du coup, on lui dédie notre hit du grenier."
)
playlist4 = Playlist.create(
  title: "La Playlist du Vendredi #4",
  featured: false,
  special: false,
  deezer_uid: "5213886284",
  spotify_link: "https://open.spotify.com/playlist/0B7E6AkrvaAXjHImtUfJyd"
)
playlist5 = Playlist.create(
  title: "La Playlist du Vendredi #5",
  featured: true,
  special: false,
  deezer_uid: "5298910202",
  spotify_link: "https://open.spotify.com/playlist/6Ia5Ro3ccoOQTgYExFmuX3"
)
puts "#{Playlist.count} playlists created."

# Playlist #1
puts "Filling up playlist #1"

Authoring.create(song: Song.create(title: "Levania"), artist: Artist.create(name: "Jacco Gardner"))
Authoring.create(song: Song.create(title: "Tumbling Lights"), artist: Artist.create(name: "The Acid"))
Authoring.create(song: Song.create(title: "Any Major Dude Will Tell You"), artist: Artist.create(name: "Steely Dan"))
Authoring.create(song: Song.create(title: "Talking Loud"), artist: Artist.create(name: "Manolo Redondo"))
Authoring.create(song: Song.create(title: "Age Of Man"), artist: Artist.create(name: "Greta Van Fleet"))
Authoring.create(song: Song.create(title: "It Probably Matters"), artist: Artist.create(name: "Interpol"))
Authoring.create(song: Song.create(title: "20 Size"), artist: Artist.create(name: "Mogwai"))
Authoring.create(song: Song.create(title: "Total Eclipse Of The Heart"), artist: Artist.create(name: "Bonnie Tyler"))
Authoring.create(song: Song.create(title: "Dance Yrself Clean"), artist: Artist.create(name: "LCD Soundsystem"))
Authoring.create(song: Song.create(title: "Happy Birthday, Johnny - piano version"), artist: Artist.create(name: "St. Vincent"))

Belonging.create(song: Song.find_by(title: "Levania"), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Tumbling Lights"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Any Major Dude Will Tell You"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Talking Loud"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Age Of Man"), category: Category.find_by(name: "Le Jean-Michel à côté"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "It Probably Matters"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "20 Size"), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Total Eclipse Of The Heart"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Dance Yrself Clean"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist1)
Belonging.create(song: Song.find_by(title: "Happy Birthday, Johnny - piano version"), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist1)

puts "Playlist #1 created with #{playlist1.songs.count} songs #{playlist1.songs.map(&:artists).count} artists."

# Playlist #2
puts "Filling up Playlist #2."

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

Belonging.create(song: Song.find_by(title: "Death In Midsummer"), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "So You’ll Aim Toward the Sky"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Winning"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Perfecto"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "La Forêt"), category: Category.find_by(name: "Le Jean-Michel à côté"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Old Pine"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Crush"), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "MmmBop"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "You & Me"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist2)
Belonging.create(song: Song.find_by(title: "Future Hates Me"), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist2)

puts "Playlist #2 created with #{playlist2.songs.count} songs #{playlist2.songs.map(&:artists).count} artists."

# Playlist #3
puts "Filling up Playlist #3."

Authoring.create(song: Song.create(title: "Come Back Kid"), artist: Artist.create(name: "Sharon Von Etten"))
Authoring.create(song: Song.create(title: "Turtleneck"), artist: Artist.create(name: "The National"))
Authoring.create(song: Song.create(title: "The Violence Inside"), artist: Artist.create(name: "En Attendant Ana"))
Authoring.create(song: Song.create(title: "I Feel It Coming"), artist: Artist.create(name: "The Weeknd"))
Authoring.create(song: Song.create(title: "Space Man"), artist: Artist.create(name: "Babylon Zoo"))
Authoring.create(song: Song.create(title: "Long Live The (D)evil"), artist: Artist.create(name: "Moriarty"))
Authoring.create(song: Song.create(title: "Threads"), artist: Artist.create(name: "This Will Destroy You"))
Authoring.create(song: Song.create(title: "Ever Fallen In Love"), artist: Artist.create(name: "Buzzcocks"))
Authoring.create(song: Song.create(title: "Praise You"), artist: Artist.create(name: "Fat Boy Slim"))
Authoring.create(song: Song.create(title: "One For The Team"), artist: Artist.create(name: "Peter Bjorn & John"))

Belonging.create(song: Song.find_by(title: "Come Back Kid"), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "Turtleneck"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "Ever Fallen In Love"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "The Violence Inside"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "I Feel It Coming"), category: Category.find_by(name: "Le Jean-Michel à côté"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "Long Live The (D)evil"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "Threads"), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "Space Man"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "Praise You"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist3)
Belonging.create(song: Song.find_by(title: "One For The Team"), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist3)

puts "Playlist #3 created with #{playlist3.songs.count} songs #{playlist3.songs.map(&:artists).count} artists."

# Playlist #4
puts "Filling up Playlist #4."

Authoring.create(song: Song.create(title: "Dimanche"), artist: Artist.create(name: "The Liminanas"))
Authoring.create(song: Song.create(title: "Default"), artist: Artist.create(name: "Django Django"))
Authoring.create(song: Song.create(title: "Shelter"), artist: Artist.create(name: "Broken Bells"))
Authoring.create(song: Song.create(title: "Dreams"), artist: Artist.create(name: "Fleetwood Mac"))
Authoring.create(song: Song.create(title: "Show Me Everything"), artist: Artist.create(name: "Tindersticks"))
Authoring.create(song: Song.create(title: "Confession In The Pool"), artist: Artist.create(name: "Ash"))
Authoring.create(song: Song.create(title: "Where Is My Mind"), artist: Artist.create(name: "Maxence Cyrin"))
Authoring.create(song: Song.create(title: "Kids In America"), artist: Artist.create(name: "Kim Wilde"))
Authoring.create(song: Song.create(title: "Already Gone"), artist: Artist.create(name: "Wooden Shjips"))
Authoring.create(song: Song.create(title: "Infinity"), artist: Artist.create(name: "The XX"))

Belonging.create(song: Song.find_by(title: "Shelter"), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Where Is My Mind"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Dreams"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Dimanche"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Infinity"), category: Category.find_by(name: "Le Jean-Michel à côté"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Confession In The Pool"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Show Me Everything"), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Kids In America"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Default"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist4)
Belonging.create(song: Song.find_by(title: "Already Gone"), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist4)

puts "Playlist #4 created with #{playlist4.songs.count} songs #{playlist4.songs.map(&:artists).count} artists."

# Playlist #5
puts "Filling up Playlist #5."

Authoring.create(song: Song.create(title: "Fight Test"), artist: Artist.create(name: "The Flamming Lips"))
Authoring.create(song: Song.create(title: "Main Girl"), artist: Artist.create(name: "Charlotte Cardin"))
Authoring.create(song: Song.create(title: "What's The Frequency, Kenneth?"), artist: Artist.create(name: "REM"))
Authoring.create(song: Song.create(title: "Sunday Interlude"), artist: Artist.create(name: "Delv!s"))
Authoring.create(song: Song.create(title: "La Grenade"), artist: Artist.create(name: "Clara Luciani"))
Authoring.create(song: Song.create(title: "Coming Down"), artist: Artist.create(name: "Dum Dum Girls"))
Authoring.create(song: Song.create(title: "Nightclubbing"), artist: Artist.create(name: "Iggy Pop"))
Authoring.create(song: Song.create(title: "Stay Lit"), artist: Artist.create(name: "Holy Fuck"))
Authoring.create(song: Song.create(title: "Freed From Desire"), artist: Artist.create(name: "Gala"))
Authoring.create(song: Song.create(title: "Afterlife"), artist: Artist.create(name: "Arcade Fire"))
Authoring.create(song: Song.create(title: "Smaller"), artist: Artist.create(name: "Christian Leave"))

Belonging.create(song: Song.find_by(title: "Main Girl"), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "What's The Frequency, Kenneth?"), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Nightclubbing"), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "La Grenade"), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Coming Down"), category: Category.find_by(name: "Le Jean-Michel à côté"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Afterlife"), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Stay Lit"), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Freed From Desire"), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Sunday Interlude"), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Smaller"), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist5)
Belonging.create(song: Song.find_by(title: "Fight Test"), category: Category.find_by(name: "Le Cu-culte"), playlist: playlist5)

puts "Playlist #5 created with #{playlist5.songs.count} songs #{playlist5.songs.map(&:artists).count} artists."

# Special playlist #1

special_playlist1 = Playlist.create(
  title: "Le Hors Série du Vendredi #1 - Christmas",
  featured: false,
  special: true,
  deezer_uid: "5240513302",
  spotify_link: "https://open.spotify.com/playlist/1nGNh7sL2SbvS0pBgxEyHW"
)

Authoring.create(song: Song.create(title: "Jingle Bells"), artist: Artist.create(name: "Frank Sinatra"))
Authoring.create(song: Song.create(title: "Baby, It's Cold Outside"), artist: Artist.create(name: "She & Him"))
Authoring.create(song: Song.create(title: "White Winter Hymnal"), artist: Artist.create(name: "Fleet Foxes"))
Authoring.create(song: Song.create(title: "La Fille Du Père Noël"), artist: Artist.create(name: "Jacques Dutronc"))
Authoring.create(song: Song.create(title: "White Christmas"), artist: Artist.create(name: "Elvis Presley"))
Authoring.create(song: Song.create(title: "Santa Claus Is Comin' To Town"), artist: Artist.create(name: "Bruce Springsteen"))
Authoring.create(song: Song.create(title: "Silent Night"), artist: Artist.create(name: "Sufjan Stevens"))
Authoring.create(song: Song.create(title: "Christmas Is Going To The Dogs"), artist: Artist.create(name: "Eels"))
Authoring.create(song: Song.create(title: "I Wish It Was Christmas Today"), artist: Artist.create(name: "Julian Casablancas"))
Authoring.create(song: Song.create(title: "Christmas (Baby Please Come Home)"), artist: Artist.create(name: "U2"))
Authoring.create(song: Song.create(title: "The Little Drummer Boy"), artist: Artist.create(name: "Johnny Cash"))
Authoring.create(song: Song.create(title: "Maybe This Christmas"), artist: Artist.create(name: "Ron Sexsmith"))
Authoring.create(song: Song.create(title: "Last Christmas"), artist: Artist.create(name: "Wham!"))
Authoring.create(song: Song.create(title: "Carol Of The Bells"), artist: Artist.create(name: "Wishing On A Star"))

Belonging.create(song: Song.find_by(title: "Jingle Bells"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Baby, It's Cold Outside"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "White Winter Hymnal"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "La Fille Du Père Noël"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "White Christmas"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Santa Claus Is Comin' To Town"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Silent Night"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Christmas Is Going To The Dogs"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "I Wish It Was Christmas Today"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Christmas (Baby Please Come Home)"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "The Little Drummer Boy"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Maybe This Christmas"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Last Christmas"), playlist: special_playlist1)
Belonging.create(song: Song.find_by(title: "Carol Of The Bells"), playlist: special_playlist1)

puts "#{Playlist.where(special: true).count} special playlists created."

special_playlist2 = Playlist.create(
  title: "Le Hors Série du Vendredi #2 - Bowie",
  featured: false,
  special: true,
  deezer_uid: "5325430302",
  spotify_link: "https://open.spotify.com/playlist/0Gf1FWGE5O3I2v6SVxEy8P"
)

bowie = Artist.create(name: "David Bowie")

Authoring.create(song: Song.create(title: "Memory Of A Free Festival"), artist: bowie)
Authoring.create(song: Song.create(title: "The Width Of A Circle"), artist: bowie)
Authoring.create(song: Song.create(title: "Oh! You Pretty Things"), artist: bowie)
Authoring.create(song: Song.create(title: "Time"), artist: bowie)
Authoring.create(song: Song.create(title: "Diamond Dogs"), artist: bowie)
Authoring.create(song: Song.create(title: "Station To Station"), artist: bowie)
Authoring.create(song: Song.create(title: "Sound And Vision"), artist: bowie)
Authoring.create(song: Song.create(title: "A New Career In A New Town"), artist: bowie)
Authoring.create(song: Song.create(title: "Beauty And The Beast"), artist: bowie)
Authoring.create(song: Song.create(title: "Look Back In Anger"), artist: bowie)
Authoring.create(song: Song.create(title: "Scary Monsters (And Super Creeps)"), artist: bowie)
Authoring.create(song: Song.create(title: "Heaven's In Here"), artist: bowie)
Authoring.create(song: Song.create(title: "The Hearts Filthy Lesson"), artist: bowie)
Authoring.create(song: Song.create(title: "Valentine's Day"), artist: bowie)
Authoring.create(song: Song.create(title: "Rock'N'Roll Suicide"), artist: bowie)

Belonging.create(song: Song.find_by(title: "Memory Of A Free Festival"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "The Width Of A Circle"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Oh! You Pretty Things"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Time"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Diamond Dogs"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Station To Station"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Sound And Vision"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "A New Career In A New Town"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Beauty And The Beast"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Look Back In Anger"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Scary Monsters (And Super Creeps)"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Heaven's In Here"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "The Hearts Filthy Lesson"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Valentine's Day"), playlist: special_playlist2)
Belonging.create(song: Song.find_by(title: "Rock'N'Roll Suicide"), playlist: special_playlist2)

# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))

# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), playlist: playlist4)

# Playlist #4
# puts "Filling up Playlist #4."

# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))
# Authoring.create(song: Song.create(title: ""), artist: Artist.create(name: ""))

# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "L’Uptodate #1"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Tv/Movie Related"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Hit du Grenier"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Frenchie but Chic"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Jean-Michel à côté"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Concert de la Semaine"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Tout nu !"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Guilty Pleasure"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "Le Friday Night Fever"), playlist: playlist4)
# Belonging.create(song: Song.find_by(title: ""), category: Category.find_by(name: "L’Uptodate #2"), playlist: playlist4)

# puts "Playlist #4 created with #{playlist4.songs.count} songs #{playlist4.songs.map(&:artists).count} artists."




