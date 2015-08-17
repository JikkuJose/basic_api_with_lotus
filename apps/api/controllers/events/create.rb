require 'pstore'

DB = './db/store.pstore'

module API::Controllers::Events
  class Create
    include API::Action

    def call(env)
      db = PStore.new(DB)

      db.transaction do |store|
        store[:events] ||= []
        store[:events] << sample_hash
      end

      self.body = ''
      p db.transaction { |s| s[:events] }
    end

    def sample_hash
      {
        id: rand(23),
        type: :accident,
        lattitude: 1.9 * rand(5),
        longitude: 2.3 * rand(5),
      }
    end
  end
end
