class Customer
attr_reader :fav_song, :cash, :name, :tab
def initialize(name, fav_song, cash, tab)
@fav_song=fav_song
@cash=cash
@name=name
@tab=tab

end

def pay_bill
  @cash-= @tab.customer_tab_total
end

def order_drink(drink)
  @tab.add_drink_to_bill(self, drink)
end











end
