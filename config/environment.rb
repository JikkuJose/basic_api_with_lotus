require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require_relative '../apps/api/application.rb'

Lotus::Container.configure do
  mount API::Application, at: 'api'
end
