#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:lepra.db"

class Posts < ActiveRecord::Base
end

get '/' do
	erb "Hello!"			
end