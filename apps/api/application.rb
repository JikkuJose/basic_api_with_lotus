require 'lotusrb'

module API
  class Application < Lotus::Application

    configure do
      routes 'apps/api/config/routes'
    end
  end
end
