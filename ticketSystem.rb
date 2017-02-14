class TicketSystem
  def main
    customer_name = ""
    adult_ticket = 0
    child_ticket = 0
    amount_paid = 0
    isPaid = false

    print "\n\nWelcome to the Ticket System: \n"
    print "Please enter your name: "
    customer_name = gets.chomp

    print "\n\nPlease enter the amount of Adult Ticket ($21 pp): "
    adult_ticket = gets.chomp.to_i

    print "\n\nPlease enter the amount of Child Ticket ($11 pp): "
    child_ticket = gets.chomp.to_itick


      until (isPaid == true)

        print "\n\nPlease enter amount paid:\n(Expected:$ #{calculateTotal(adult_ticket, child_ticket)})\n::"
        amount_paid = gets.chomp.to_i

        if ( calculateTotal(adult_ticket, child_ticket ) <= amount_paid)
          print "\n-----------------------------"
          print "\nThank you #{customer_name} for purchasing a total of #{adult_ticket + child_ticket} tickets.\n"
          print "Your change is $#{amount_paid - calculateTotal(adult_ticket, child_ticket)}."
          print "\n-----------------------------\n\n"
          isPaid = true
        else
          print "\n\nInsufficient amount!!"
        end #END if
      end #END while
  end #END main()

  def calculateTotal(inAdult, inChild)
    total_price = (inAdult * 21) + (inChild * 11)

    total_price #Return
  end
end #END class

runProgram = TicketSystem.new
runProgram.main
