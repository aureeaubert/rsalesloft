module RSalesloft::Resources
  class People
    class << self
      def list(query = {})
        RSalesloft::Connection.get(people_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(people_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(people_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(people_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(people_path(id), options)
      end

      private 

      def people_path(id = nil)
        id ? "people/#{id}" : "people/"
      end
    end
  end
end