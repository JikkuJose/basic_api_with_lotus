require 'lotusrb'

module API
  class Application < Lotus::Application

    configure do
      root __dir__

      load_paths << [
        'controllers',
      ]

      routes 'config/routes'
    end
  end
end
