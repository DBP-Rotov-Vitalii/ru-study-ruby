module Exercise
  module Arrays
    class << self
      def replace(array)
        max_element = array[0]
        array.each { |el| max_element = el if el > max_element }
        array.map { |el| el.positive? ? max_element : el }
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
        return -1 if array.empty? || array[0] > query || array[-1] < query

        bsearch_my(array, query, 0, array.length)
      end
    end
  end
end
