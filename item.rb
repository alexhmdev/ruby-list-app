class Item
    attr_writer  :text, :checked

    def initialize(text="")
        @text = text
        @checked = false
    end
    def to_s
        if @checked
            "[x] ".red + @text.green
        else
            "[ ] ".blue + @text.blue    
        end
    end
end