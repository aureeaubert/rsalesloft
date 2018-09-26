module RSalesloft::Resources
  class EmailTemplates
    class << self
      def list(query = {})
        RSalesloft::Connection.get(email_templates_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(email_templates_path(id))
      end

      private 

      def email_templates_path(id = nil)
        id ? "email_templates/#{id}/" : "email_templates/"
      end
    end
  end
end