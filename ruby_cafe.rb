require_relative './cafe'

menu = {"latte" => 4.00, "tea" => 3.00, "scone" => 5.00}
cafe = Cafe.new("Coder Cafe", menu)

cafe.welcome

loop do
    cafe.print_menu
    puts
    puts "What would you like to order? When you are finished, type 'done'."
    input = gets.strip.downcase
    if (input == 'done')
        break
    end

    item = cafe.menu.validate_item(input)
    if (item)
        puts "How many would you like?"
        quantity = gets.to_i
        if (quantity > 0)
            cafe.add_to_order(item, quantity)
        end
    end
end

cafe.print_order