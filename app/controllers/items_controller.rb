class ItemsController < ApplicationController
    def show
        @posts = Post.select("lure")
        @items = Item.select("item")
        @pens = Pen.select("pen")
    end
end
