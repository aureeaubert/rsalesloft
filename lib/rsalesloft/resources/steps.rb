module RSalesloft::Resources
  class Steps
    class << self
      def list(query = {})
        RSalesloft::Connection.get(steps_path, query)
      end

      def fetch(id)
        RSalesloft::Connection.get(steps_path(id))
      end

      private 

      def steps_path(id = nil)
        id ? "steps/#{id}/" : "steps/"
      end
    end
  end
end