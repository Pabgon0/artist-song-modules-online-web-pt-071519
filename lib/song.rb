require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
class Song
  attr_accessor :name, :artist
  
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  @@songs = []
 
  def self.all
    @@songs
  end
  
end
