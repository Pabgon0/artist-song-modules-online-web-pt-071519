require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
class Artist
  extend Memorable, Findable
  include Paramable
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
 
  def initialize
    self.class.all << self
    @songs = []
  end
 
  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
