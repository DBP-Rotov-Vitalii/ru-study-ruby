module Exercise
  module Arrays
    class << self
      def replace(array)
        max_element = array.max
        array.map! { |el| el.positive? ? max_element : el }
        array
      end

      def search(array, query)
        result = array.bsearch_index { |el| query <=> el }
        result || -1
      end
    end
  end
end
