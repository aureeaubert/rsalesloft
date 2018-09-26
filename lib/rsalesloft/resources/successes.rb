module RSalesloft::Resources
  class Successes
    class << self
      def list(query = {})
        RSalesloft::Connection.get("successes/", query)
      end
    end
  end
end