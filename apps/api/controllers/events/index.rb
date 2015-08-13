require 'json'

module API::Controllers::Events
  class Index
    include API::Action

    def call(env)
      self.format = :json

      self.body = sample_hash.to_json
    end

    def sample_hash
      {
        error: nil,
        payload: [
          {
            id: 1,
            type: :accident,
            lattitude: 1.9,
            longitude: 2.3,
          }
        ],
      }
    end
  end
end
