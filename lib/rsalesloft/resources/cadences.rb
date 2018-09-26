module RSalesloft::Resources
  class Cadences
    class << self
      def list(query = {})
        RSalesloft::Connection.get(cadences_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(cadences_path(id))
      end

      private 

      def cadences_path(id = nil)
        id ? "cadences/#{id}/" : "cadences/"
      end
    end
  end
end