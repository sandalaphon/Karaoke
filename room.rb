class Room
attr_reader :room_name, :songs, :guests, :capacity
  def initialize(room_name, songs, capacity)
  @room_name = room_name
  @songs = songs
  @guests = []
  @capacity = capacity
end

def accept_new_guest(customer)
  @guests=@guests.push(customer)
end

def remove_guest(customer)
  @guests = @guests - [customer]
  end

  def accept_new_song(song)
    @songs=@songs.push(song)
  end

end