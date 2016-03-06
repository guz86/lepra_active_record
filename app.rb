#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:lepra.db"

class Post < ActiveRecord::Base
	validates :name, presence: true
	validates :content, presence: true
end

class Comment < ActiveRecord::Base
end

#вывод всех постов на главной
get '/' do
	@posts = Post.all
	erb :index		
end

get '/new' do
	erb :new
end

# добавление поста
post '/new' do
	p = Post.new params[:post]	
	if p.save
		erb "<h2>Thank you!</h2>"
	else
		@error = p.errors.full_messages.first
		erb :new
	end
end

# вывод информации о посте
get '/details/:id' do
	@post = Post.find(params[:id])
	erb :details
end