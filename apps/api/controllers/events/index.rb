module API::Controllers::Events
  class Index
    def call(env)
      [200, {}, ['from Controller!']]
    end
  end
end
