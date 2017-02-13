class Bar

attr_reader :drinks, :rooms, :cash
def initialize(drinks, rooms, cash)
@drinks=drinks
@rooms=rooms
@cash=cash 
end

def deliver_drink(customer,drink)
end

def find_customer_room(customer)
  customer_room=nil
  @rooms.each {|room| room.guests.each{|guest| customer_room=room if guest==customer}
  }
  return customer_room
end

def find_customer_by_name(name)
  customer_found=nil
  @rooms.each {|room| room.guests.each{|guest| customer_found=guest if guest.name==name 
  }
}
  return customer_found
  end

def check_in_guest(customer, room)
room.accept_new_guest(customer)
end

def check_out_guest(customer)
cust_room= find_customer_room(customer)
cust_room.remove_guest(customer)
#take money from customer
#add money to bar
#remove customer from room
end

def take_payment(customer)
customer.pay_bill
@cash += customer.tab.customer_tab_total
customer.tab.bill_is_paid(customer)
end

def find_drink_by_name(name)
  drink_id=nil
@drinks.each{|drink| drink_id=drink if drink.name==name}
return drink_id
  end

  def find_room_by_name(name)
    room_needed=nil
    @rooms.each{|room| room_needed=room if room.room_name==name }
    return room_needed
  end

  def add_new_room(name_of, songs_of, capacity_of)
    new_room_id=@rooms.length
    new_room_id=Room.new(name_of, songs_of, capacity_of)
    @rooms.push(new_room_id)

  end

  def is_there_capacity_in_room(room)
    room_in_question=nil
  @rooms.each{|each_room| room_in_question=each_room if room==each_room}
  room_in_question.guests.length<room_in_question.capacity ? true : false
  end

  def find_rooms_with_capacity
    array_of_rooms_with_capacity=@rooms.map{|room| room if room.capacity>room.guests.length}
    return array_of_rooms_with_capacity.compact

  end






end