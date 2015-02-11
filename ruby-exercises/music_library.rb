#I'm going to create a class that produces a music library.



class Person

  attr_reader :name

  def initialize(name)
    name = name
  end

end


class MusicLibrary

  attr_accessor :songs, :person
  attr_reader :library_name
  #playlist?

  def initialize(person_object, library_name)
    @person = person_object.name
    @library_name = library_name
    @playlist_library = {} #{playlist_name, {song, artist}} nested hash.
    @songs = {} #{song, artist}
  end

  def create_playlist(playlist)
    @playlist = playlist
    @playlist_library[playlist] = {}
  end

  def add_song(song_name, song_artist)
    @songs[song_name]=song_artist
    puts "You've added #{song_name} by #{song_artist} to your music library"
  end

  def show_songs
    puts " "
    puts "Your current music library: "
    @songs.each do |song, artist|
      puts song + "- " + artist 
    end
    puts " "
  end

  def delete_song(song_name, artist)
    if @songs[song_name] == artist
      @songs.delete(song_name) 
      puts "You've successfully deleted #{song_name} by #{artist} from your library"
    else
      puts "That song is not in your library."
    end
  end

  def add_song_to_playlist(playlist, song, artist)
    if @songs[song] = artist
      @playlist = playlist
      @playlist_library[@playlist][song] = artist
      puts "You've added #{song} by #{artist} to the playlist- #{playlist}"
    else
      puts "That song is not in your music library."
    end
  end

  def delete_playlist_song(playlist, delete_song, the_artist)
    @playlist_library[@playlist].delete_if {|x, y| (x == delete_song) && (y == the_artist) }
    puts "You've successfully deleted #{delete_song} by #{the_artist} from the playlist- #{playlist}"
  end

  def show_playlists
    puts "Your Playlists: "
    @playlist_library.each do |playlist, playlist_content|
      puts playlist 
    end
  end

  def show_playlist_songs(playlist)
    puts " "
    puts "Songs in #{playlist} playlist: "
    @playlist_library[@playlist].each do |song, artist|
      puts song + " - " + artist
    end
    puts " "
  end

  def send_song_to_library(library_name, receiver_library, song, artist)
    if library_name.songs[song] = artist
     receiver_library.songs[song] = artist
     puts "You have sent #{song} by #{artist} to #{receiver_library.library_name}"
    else
      puts "You don't have that song in your music library." 
    end
  end

end

enja = Person.new("Enja")
jan = Person.new("Jan")



enjas_library = MusicLibrary.new(enja, "Enja's Library")
enjas_library.add_song("Don't want no scrubs", "TLC")
enjas_library.add_song("Team", "Lorde")
enjas_library.add_song("Born to Die", "Lana Del Rey")
enjas_library.show_songs
enjas_library.delete_song("Don't want no scrubs", "TLC")
enjas_library.show_songs
enjas_library.add_song("Black Widow", "Iggy")
enjas_library.create_playlist("Lana + Lorde")
enjas_library.add_song_to_playlist("Lana + Lorde", "Team", "Lorde")
enjas_library.create_playlist("Punk Rock")
enjas_library.create_playlist("Jazz")
enjas_library.show_playlists
enjas_library.add_song_to_playlist("Lana + Lorde", "Born to Die", "Lana Del Rey")
enjas_library.show_playlist_songs("Lana + Lorde")
enjas_library.add_song_to_playlist("Lana + Lorde", "Tennis Court", "Lorde")
enjas_library.add_song_to_playlist("Lana + Lorde", "Summertime Sadness", "Lana Del Rey")
enjas_library.delete_playlist_song("Lana + Lorde", "Born to Die", "Lana Del Rey")
enjas_library.show_playlist_songs("Lana + Lorde")


jans_library = MusicLibrary.new(jan, "Jan's Library")
jans_library.add_song("Bubble Butt", "Somebody")

enjas_library.send_song_to_library(enjas_library, jans_library, "Summertime Sadness", "Lana Del Rey")
jans_library.show_songs




