class Tab
attr_reader :customer, :customer_tab_total
def initialize(customer)
  @customer=customer
@customer_drinks_history=[]
@customer_tab_total=0
end



def add_drink_to_bill(customer, drink)
  @customer_tab_total+=drink.price
  end

  def bill_is_paid(customer)
    @customer_tab_total=0
  end


end