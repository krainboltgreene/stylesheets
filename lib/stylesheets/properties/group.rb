module StyleSheets
  class Properties
    class Group
      @@property_names = []

      attr_accessor :owner

      def initialize(owner)
        self.owner = owner
      end

      def empty?
        values_for_properties.all? &:nil?
      end

      def to_s
        values_for_properties.map &:to_s unless empty?
      end

      private

      def values_for_properties
        properties_as_ivariables.map &method(:instance_variable_get)
      end

      def to_ivar(name)
        :"@#{name}"
      end

      def properties_as_ivariables
        @@property_names.map &method(:to_ivar)
      end
    end
  end
end
