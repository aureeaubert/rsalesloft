module RSalesloft::Resources
  class PersonStages
    class << self
      def list(query = {})
        RSalesloft::Connection.get(person_stages_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(person_stages_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(person_stages_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(person_stages_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(person_stages_path(id), options)
      end

      private 

      def person_stages_path(id = nil)
        id ? "person_stages/#{id}/" : "person_stages/"
      end
    end
  end
end