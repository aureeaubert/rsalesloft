module RSalesloft::Resources
  class CadenceMemberships
    class << self
      def list(query = {})
        RSalesloft::Connection.get(cadence_memberships_path, query)
      end

      def create(options)
        RSalesloft::Connection.post(cadence_memberships_path, options)
      end

      def delete(id)
        RSalesloft::Connection.delete(cadence_memberships_path(id))
      end

      def fetch(id)
        RSalesloft::Connection.get(cadence_memberships_path(id))
      end

      def update(id, options = {})
        RSalesloft::Connection.put(cadence_memberships_path(id), options)
      end

      private 

      def cadence_memberships_path(id = nil)
        id ? "cadence_memberships/#{id}/" : "cadence_memberships/"
      end
    end
  end
end