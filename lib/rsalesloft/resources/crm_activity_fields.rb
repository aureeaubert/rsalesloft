module RSalesloft::Resources
  class CrmActivityFields
    class << self
      def list(query = {})
        RSalesloft::Connection.get("crm_activity_fields/", query)
      end
    end
  end
end