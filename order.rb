class Order
    def initialize
        @order_items = Hash.new(0)
    end

    def add_item(name, quantity)
        @order_items[name] += quantity
    end

    def get_items
        return @order_items
    end

    def display
        puts "Thank you for coming!"
        puts
    end
end

