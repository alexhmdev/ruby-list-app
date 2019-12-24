require "./list.rb"
require "./item.rb"
require "colorize"

class App
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Welcome to the list app".black.on_white
        loop do
            puts "a - add new item".bold
            puts "r - remove item".bold
            puts "l - list items".bold
            puts "c - check an item".bold
            puts "u - uncheck an item".bold
            puts "d - delete all items".bold
            puts "e - exit".bold
            puts "what do you want to do?".blue

            input = gets.chomp

            case input
            when 'e'
                puts "Thanks for use this app".on_white.black
            break
            when 'a'
                puts "List:".blue.bold
                @list.show_all
                puts "Type the new item:".blue
                item = gets.chomp
                @list.add_item item
                puts " "
                puts "List:".blue.bold
                @list.show_all
                puts " "
                puts "press enter to exit".blue
                input = gets.chomp
                puts " " # this is to make a space in the console
            when 'l'
                puts "List:".blue.bold
                @list.show_all
                puts " "
                puts "press enter to exit".blue
                input = gets.chomp
                puts " " # another space
            when 'r'
                puts "List:".blue.bold
                @list.show_all
                puts "Type the item number you want to remove:".red.bold
                item = gets.chomp.to_i
                @list.remove_item item   
                puts "List:".blue.bold
                @list.show_all
                puts " "
                puts "press enter to exit".blue
                input = gets.chomp
                puts " " # space
            when 'c'
                puts "List:".blue.bold
                @list.show_all
                puts "What item number do you want to check?".blue.bold
                item = gets.chomp.to_i
                @list.check_item item
                puts "List:".blue.bold
                @list.show_all
                puts " "
                puts "press enter to exit".blue
                input = gets.chomp
                puts " "
            when 'u'
                puts "List:".blue.bold
                @list.show_all
                puts "What item number do you want to uncheck?".blue
                item = gets.chomp.to_i
                @list.uncheck_item item
                puts "List:".blue.bold
                @list.show_all
                puts " "
                puts "press enter to exit".blue
                input = gets.chomp
                puts " "    
            when 'd'
                puts "List:".blue.bold
                @list.show_all
                puts "Are you sure you want to clear the list? Y/N".red.bold
                input = gets.chomp
                case input
                when 'y'
                    @list.remove_all
                    @list.show_all
                    puts "press enter to exit".blue
                    input = gets
                when 'n'
                    puts "List:".blue.bold
                    @list.show_all
                    puts " "
                    puts "press enter to exit".blue
                    input = gets    
            end    
        end
   
   end end

end

app = App.new
app.run
