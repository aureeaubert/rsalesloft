module RSalesloft::Resources
  class Calls
    class << self
      def list(query = {})
        RSalesloft::Connection.get(calls_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(calls_path, options)
      end

      def fetch(id)
        RSalesloft::Connection.get(calls_path(id))
      end

      private 

      def calls_path(id = nil)
        id ? "activities/calls/#{id}/" : "activities/calls/"
      end
    end
  end
end