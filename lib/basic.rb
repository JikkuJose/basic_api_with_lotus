require 'lotus/model'
Dir["#{__dir__}/basic/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  adapter type: :sql, uri: ENV['BASIC_DB_URL']
end.load!

migrations 'db/migrations'
schema 'db/schema.sql'
