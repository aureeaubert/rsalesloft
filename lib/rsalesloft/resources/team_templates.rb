module RSalesloft::Resources
  class TeamTemplates
    class << self
      def list(query = {})
        RSalesloft::Connection.get(team_templates_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(team_templates_path(id))
      end

      private 

      def team_templates_path(id = nil)
        id ? "team_templates/#{id}/" : "team_templates/"
      end
    end
  end
end