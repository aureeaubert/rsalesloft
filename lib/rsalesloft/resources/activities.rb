module RSalesloft::Resources
  class Activities
    class << self
      def create(options)
        RSalesloft::Connection.post("activities/", options)
      end
    end
  end
end