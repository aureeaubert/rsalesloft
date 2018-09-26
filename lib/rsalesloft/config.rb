module RSalesloft
  class Config
    class << self
      attr_accessor :api_key

      def configure(config)
        @api_key = config[:api_key]

        self
      end

      def reset!
        @api_key = nil
      end
    end
  end
end