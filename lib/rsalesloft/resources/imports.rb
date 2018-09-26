module RSalesloft::Resources
  class Imports
    class << self
      def list(query = {})
        RSalesloft::Connection.get(imports_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(imports_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(imports_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(imports_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(imports_path(id), options)
      end

      private 

      def imports_path(id = nil)
        id ? "imports/#{id}" : "imports/"
      end
    end
  end
end