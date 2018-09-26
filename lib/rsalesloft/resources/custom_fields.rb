module RSalesloft::Resources
  class CustomFields
    class << self
      def list(query = {})
        RSalesloft::Connection.get(custom_fields_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(custom_fields_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(custom_fields_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(custom_fields_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(custom_fields_path(id), options)
      end

      private 

      def custom_fields_path(id = nil)
        id ? "custom_fields/#{id}/" : "custom_fields/"
      end
    end
  end
end