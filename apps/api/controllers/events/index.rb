require 'json'
require 'pstore'

DB = './db/store.pstore'

module API::Controllers::Events
  class Index
    include API::Action

    def call(params)
      self.body = sample_hash.to_json
    end

    def sample_hash
      {
        error: nil,
        payload: all_events,
      }
    end

    def all_events
      db = PStore.new(DB)
      db.transaction { |s| s[:events] }
    end
  end
end
