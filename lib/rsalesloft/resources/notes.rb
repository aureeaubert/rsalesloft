module RSalesloft::Resources
  class Notes
    class << self
      def list(query = {})
        RSalesloft::Connection.get(notes_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(notes_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(notes_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(notes_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(notes_path(id), options)
      end

      private 

      def notes_path(id = nil)
        id ? "notes/#{id}/" : "notes/"
      end
    end
  end
end