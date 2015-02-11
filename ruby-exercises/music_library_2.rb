
=begin
    
what if song were its own class 
and library were a class

create a song that automatically goes into a music library
in the music library you can create playlists to organize some songs.

=end

require 'debugger'

class Song

  attr_reader :song_name, :artist, :album, :song_info

  def initialize(song_name, artist, album)
    @song_name = song_name
    @artist = artist
    @album = album 

    @song_info = {}
    @song_info[song_name] = {artist: album}
  end


end


class MusicLibrary

  attr_reader :library_songs, :playlist_library

  def initialize(library_name)
    @library_name = library_name
    @library_songs = {}
    @playlist_library = {}
  end

  def add_song(song, artist)
    @added_song = song

    if @added_song.song_info[@added_song.song_name] 
      @library_songs[@added_song.song_name] = {@added_song.artist => @added_song.album}
    else
      puts "You don't have that song to add to your music library."
    end
  end

  def delete_song(song)
    @library_songs.delete(song.song_name)
    puts "You've successfully deleted #{song.song_name} from your music library."
  end

  def show_all_songs
    puts " "
    puts "-----Songs in #{@library_name}-----"
    @library_songs.each do |song, artist_album_hash|
      print song + " -- "
      artist_album_hash.each do |artist, album|
        puts artist + " -- " + album
      end
    end
    puts " "
  end

  def create_playlist(playlist_name)
    @playlist_library[playlist_name] = {}
    puts "You've now created the playlist: #{playlist_name}"
  end

  def add_playlist_song(playlist, song)
    @playlist_library[playlist][song.song_name]= {song.artist => song.album}
    puts "You've added #{song.song_name} to the playlist: #{playlist}"
  end

  def delete_playlist_song(playlist, song)
    if @playlist_library[playlist][song.song_name]
      @playlist_library[playlist].delete(song.song_name)
      puts "You've successfully deleted #{song.song_name} from #{playlist}"
    else
      puts "#{song.song_name} is not in the playlist: #{playlist} so cannot be deleted."
    end
  end

  def show_playlists
    @playlist_library.each do |playlist, info|
      puts playlist
    end
  end

  def show_playlist_songs(playlist)
    puts " "
    puts "------ Songs in playlist: #{playlist} ------"
    @playlist_library[playlist].each do |song, artist_album|
      print song + " -- "
      artist_album.each do |artist, album|
        puts artist + " -- " + album
      end
    end
    puts " "
  end
end


no_scrubs = Song.new("No Scrubs", "TLC", "unknown_album")
gang_control = Song.new("Gang Control", "Leftover Crack", "unknown_album")
team = Song.new("Team", "Lorde", "Pure Heroin")
ribs = Song.new("Ribs", "Lorde", "Pure Heroin")
summertime_sadness = Song.new("Summertime Sadness", "Lana Del Rey", "unknown_album")
anarchy_in_the_uk = Song.new("Anarchy in the UK", "Sex Pistols", "Never Mind the Bollocks")

enjas_itunes = MusicLibrary.new("Enja's Music Library")
enjas_itunes.add_song(no_scrubs, "TLC")
enjas_itunes.add_song(gang_control, "Leftover Crack")
enjas_itunes.add_song(ribs, "Lorde")
enjas_itunes.add_song(team, "Lorde")
enjas_itunes.add_song(summertime_sadness, "Lana Del Rey")

enjas_itunes.show_all_songs

enjas_itunes.create_playlist("PunkRock")
enjas_itunes.create_playlist("Vibe")

enjas_itunes.show_playlists

enjas_itunes.add_playlist_song("PunkRock", gang_control)
enjas_itunes.add_playlist_song("PunkRock", anarchy_in_the_uk)
enjas_itunes.show_playlist_songs("PunkRock")

enjas_itunes.delete_song(team)
enjas_itunes.show_all_songs

enjas_itunes.delete_playlist_song("PunkRock", gang_control)
enjas_itunes.delete_playlist_song("PunkRock", no_scrubs)
enjas_itunes.show_playlist_songs("PunkRock")



