require "./item.rb"
require "colorize"

class List
    attr_writer :items

    def initialize
        @items = Array.new()
    end

    def add_item(text)
        item = Item.new(text)
        @items.push item
    end
    

    def remove_item(index)
        if @items.length <= index
            puts "That item doesn´t exist".red
        else    
        @items.delete_at index 
        end
    end

    def check_item(index)
        if @items.length <= index # check if the number on the list exist
            puts "That item doesn't exist".red
        else
            @items[index].checked = true
        end
    end

    def uncheck_item(index)
        if @items.length <= index # check if the number on the list exist
            puts "That item doesn't exist".red
        else
            @items[index].checked = false
        end    
    end
    
     
    def remove_all
        @items.clear
    end

    def show_all
        if @items.length == 0 # check if the list is empty
            puts "No items in your list".red
        else
            @items.each_index do |index| 
                puts index.to_s + " - " + @items[index].to_s
        end
      end
    end
end