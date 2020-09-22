class LuresController < ApplicationController
    
    def index
        Post.destroy_all
        Item.destroy_all
        Pen.destroy_all

        require "open-uri"
        require "nokogiri"

        uri = OpenURI.open_uri('https://lurebank.com/type.php/')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//div[@class="layout.layout_thumbnail"]')
        @doc.css('h4/a').each do |link|
        lure = link.inner_text
        @post = Post.new(lure: lure)
        @post.save
        end

        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=poper&page=1')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        item = link.inner_text.strip
        @item = Item.new(item: item)
        @item.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=poper&page=2')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        item = link.inner_text.strip
        @item = Item.new(item: item)
        @item.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=poper&page=3')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        item = link.inner_text.strip
        @item = Item.new(item: item)
        @item.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=poper&page=4')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        item = link.inner_text.strip
        @item = Item.new(item: item)
        @item.save
        end
 
        
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=1')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=2')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=3')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=4')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=5')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=6')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=7')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=8')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=9')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=10')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=11')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=12')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=13')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end
        uri = OpenURI.open_uri('https://lurebank.com/item_list.php?type=pencil&page=14')
        @doc = Nokogiri::HTML(uri,nil,"utf-8")
        @doc.xpath('//a/div[@class="wrapper_details"]')
        @doc.css('h4').each do |link|
        pen = link.inner_text.strip
        @pen = Pen.new(pen: pen)
        @pen.save
        end

        @posts = Post.select("lure")
        
    end

    def create
     
    end

    def show
        @posts = Post.select("lure")
        @items = Item.select("item")
        @pen = Pen.select("pen")
    end
end
