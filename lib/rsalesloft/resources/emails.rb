module RSalesloft::Resources
  class Emails
    class << self
      def list(query = {})
        RSalesloft::Connection.get(emails_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(emails_path(id))
      end

      private 

      def emails_path(id = nil)
        id ? "activities/emails/#{id}/" : "activities/emails/"
      end
    end
  end
end