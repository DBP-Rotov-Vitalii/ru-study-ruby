module Exercise
  module Arrays
    class << self
      def replace(array)
        array.map { |el| el.positive? ? array.max : el }
      end

      def search(array, query)
        array.bsearch_index { |el| query <=> el } || -1
      end
    end
  end
end
