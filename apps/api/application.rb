require 'lotusrb'

module API
  class Application < Lotus::Application

    configure do
      root __dir__

      routes 'config/routes'
    end
  end
end
