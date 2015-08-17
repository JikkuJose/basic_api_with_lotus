require 'pstore'

DB = './db/store.pstore'

module API::Controllers::Events
  class Create
    include API::Action

    def call(params)
      type = params[:type]
      longitude = params[:longitude]
      lattitude = params[:lattitude]

      db = PStore.new(DB)

      db.transaction do |store|
        store[:events] ||= []
        store[:events] << sample_hash(
          type: type,
          lattitude: lattitude,
          longitude: longitude
        )
      end

      self.body = ''
    end

    def sample_hash(type: :accident, lattitude: 0, longitude: 0)
      {
        id: rand(23),
        type: type,
        lattitude: lattitude,
        longitude: longitude,
      }
    end
  end
end
