class Room
attr_reader :room_name, :songs, :guests, :capacity
  def initialize(room_name, songs, guests, capacity)
  @room_name = room_name
  @songs = songs
  @guests = guests
  @capacity = capacity
end

def accept_new_guest(customer)
  @guests=@guests.push(customer)
end

end