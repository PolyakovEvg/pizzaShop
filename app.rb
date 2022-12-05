require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: 'sqlite3', database:'pizzashop.db'}

class Pizza < ActiveRecord::Base 
    
end

class Order < ActiveRecord::Base
end

def like_json string
    arr = []
    string.each do |prod|
        s1 = prod.split('=')
        s2 = s1[0].split('_')

        id = s2[1].to_i
        value = s1[1].to_i
        arr.push([id,value])
    end
    return arr
end



get '/' do
    erb :index
end

get '/about' do
    erb :about
end

get '/menu' do
    @pizzas = Pizza.all
    erb :menu
end

get '/cart' do
    @product_info = params[:orders].split(',')
   
    if @product_info.length == 0
    erb :empty_cart
    
   else
    @items_arr = like_json @product_info
    @items_arr.each do |item|
    item[0] =  Pizza.find id=item[0]
    end
    
 

    erb :cart
   end
end 

post '/cart' do
    @product_info = params[:orders].split(',')
   
    if @product_info == []
    erb :empty_cart
    
   else
    @items_arr = like_json @product_info
    @items_arr.each do |item|
    item[0] =  Pizza.find id=item[0]
    end
    
 

    erb :cart
   end
end

post '/order' do
    @new_order = Order.create params[:order]
    
    erb :order

end

get '/orders' do
    @orders = Order.all.order('created_at DESC')
    erb :orders
end

get '/empty_cart' do
    erb :empty_cart
end