require "./list.rb"
require "./item.rb"

class App
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Welcome to the list app"
        loop do
            puts "a - add new item"
            puts "r - remove item"
            puts "l - list items"
            puts "c - check an item"
            puts "u - uncheck an item"
            puts "d - delete all items"
            puts "e - exit"

            input = gets.chomp

            case input
            when 'e'
                puts "Thanks for use this app"
            break
            when 'a'
                puts "List:"
                @list.show_all
                puts "Type the new item:"
                item = gets.chomp
                @list.add_item item
                puts " "
                puts "List:"
                @list.show_all
                puts " "
                puts "press enter to exit"
                input = gets.chomp
                puts " " # this is to make a space in the console
            when 'l'
                puts "List:"
                @list.show_all
                puts " "
                puts "press enter to exit"
                input = gets.chomp
                puts " " # another space
            when 'r'
                puts "List:"
                @list.show_all
                puts "Type the item number you want to remove:"
                item = gets.chomp.to_i
                @list.remove_item item   
                puts "List:"
                @list.show_all
                puts " "
                puts "press enter to exit"
                input = gets.chomp
                puts " " # space
            when 'c'
                puts "List:"
                @list.show_all
                puts "What item number do you want to check?"
                item = gets.chomp.to_i
                @list.check_item item
                puts "List:"
                @list.show_all
                puts " "
                puts "press enter to exit"
                input = gets.chomp
                puts " "
            when 'u'
                puts "List:"
                @list.show_all
                puts "What item number do you want to uncheck?"
                item = gets.chomp.to_i
                @list.uncheck_item item
                puts "List:"
                @list.show_all
                puts " "
                puts "press enter to exit"
                input = gets.chomp
                puts " "    
            when 'd'
                puts "List:"
                @list.show_all
                puts "Are you sure you want to clear the list? Y/N"
                input = gets.chomp
                case input
                when 'y'
                    @list.remove_all
                    @list.show_all
                    puts "press enter to exit"
                    input = gets
                when 'n'
                    puts "List:"
                    @list.show_all
                    puts " "
                    puts "press enter to exit"
                    input = gets    
            end    
        end
   
   end end

end

app = App.new
app.run
