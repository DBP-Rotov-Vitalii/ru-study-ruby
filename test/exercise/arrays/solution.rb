module Exercise
  module Arrays
    class << self
      def replace(array)
        max_element = array.max
        array.map! { |el| el.positive? ? max_element : el }
        array
      end

      def search(_array, _query)
        result = _array.bsearch_index {|el| _query <=> el }
        result = -1 if result.nil?
        result
      end
    end
  end
end
