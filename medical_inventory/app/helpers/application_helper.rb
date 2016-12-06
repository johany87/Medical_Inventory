module ApplicationHelper

  def money(number)
    number_to_currency(number, unit: "$")
  end

end
