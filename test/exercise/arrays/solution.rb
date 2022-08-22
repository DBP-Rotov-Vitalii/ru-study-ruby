module Exercise
  module Arrays
    class << self
      def replace(array)
        max_element = array.max
        array.map! { |el| el.positive? ? max_element : el }
        array
      end

      def search(_array, _query)
        0
      end
    end
  end
end
