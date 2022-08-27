module Exercise
  module Arrays
    class << self
      def replace(array)
        array.map { |el| el.positive? ? array.max : el }
      end

      def bsearch_my(array, query, first, last)
        return -1 if first >= last

        half = (first + last) / 2
        return half if array[half] == query

        if array[half] < query
          first = half + 1
        elsif array[half] > query
          last = half
        end
        bsearch_my(array, query, first, last)
      end

      def search(array, query)
        bsearch_my(array, query, 0, array.length)
      end
    end
  end
end
