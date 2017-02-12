require('minitest/autorun')
require_relative('../song.rb')

require('minitest/rg')

class Test_Song < MiniTest::Test

def setup
 @song1 = Song.new("Moonriver","Audrey Hepburn", 1977)
 @song2 = Song.new("My Way", "Frank Sinatra", 1974)
end

def test_get_song_name
  expected="Moonriver"
  actual=@song1.title
  assert_equal(expected,actual)
  end

end