class TodoList
    def initialize(chore_list)
        @item_list = chore_list
    end

    def get_items
        @item_list
    end

    def add_item(item)
        @item_list << item
    end

    def delete_item(item)
        @item_list.delete(item)
    end

    def get_item(index)
        @item_list[index]
    end

end