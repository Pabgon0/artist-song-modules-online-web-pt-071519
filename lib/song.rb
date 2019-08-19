require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
class Song
  extend Memorable, Findable
  attr_accessor :name
  attr_reader :artist
  @@all = []
 
  def initialize(name)
    @name = name
  end
 
  def self.all
    @@all
  end
end
