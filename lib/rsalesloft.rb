require "rsalesloft/config"
require "rsalesloft/connection"
require "rsalesloft/resources"

module RSalesloft
  VERSION = '0.2'

  def self.configure(config = {})
    RSalesloft::Config.configure(config)
  end
end