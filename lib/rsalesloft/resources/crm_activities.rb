module RSalesloft::Resources
  class CrmActivities
    class << self
      def list(query = {})
        RSalesloft::Connection.get(crm_activities_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(crm_activities_path(id))
      end

      private 

      def crm_activities_path(id = nil)
        id ? "crm_activities/#{id}/" : "crm_activities/"
      end
    end
  end
end