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

def check_space_in_room
end

def add_song_to_room(song, room)
  
  end



end