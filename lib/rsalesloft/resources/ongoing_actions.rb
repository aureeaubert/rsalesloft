module RSalesloft::Resources
  class OngoingAction
    class << self
      def create(options)
        RSalesloft::Connection.post("ongoing_actions/", options)
      end
    end
  end
end