module StyleSheets
  class Properties
    class Group
      PROPERTY_NAMES = []

      def empty?
        values_for_properties.all? &:nil?
      end

      def to_s
        values_for_properties.map(&:to_s)
      end

      private

      def values_for_properties
        property_names.map { |name| instance_variable_get :"@#{name}" }
      end

      def property_names
        PROPERTY_NAMES
      end
    end
  end
end
