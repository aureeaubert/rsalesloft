require "rsalesloft/config"
require "rsalesloft/connection"
require "rsalesloft/resources"

module RSalesloft
  VERSION = '0.1'

  def self.configure(config = {})
    RSalesloft::Config.configure(config)
  end
end