#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:lepra.db"

class Post < ActiveRecord::Base
end

get '/' do
	@posts = Post.all
	erb :index		
end

get '/new' do
	erb :new
end

post '/new' do
	p = Post.new params[:post]
	p.save
	erb :new
end