require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
class Song
  extend Memorable, Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist
  @@all = []
 
  def initialize
    self.class.all << self
  end
 
  def self.all
    @@all
  end
end
