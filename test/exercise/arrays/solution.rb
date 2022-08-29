module Exercise
  module Arrays
    class << self
      def replace(array)
        # Немного неудобно описано задание:
        # я сначала делал "Задачник по Ruby. Введение" целиком,
        # потому что думал, что в следующих разделах другие задания,
        # и запрета на использование max нет ни в его описании на DBP learn,
        # ни в файле test.rb.
        # Только в описании следующего раздела есть уточнение про max.
        # Было бы лучше добавить это требование в test.rb
        # или вообще объединить 4 раздела в 1 с общим описанием.
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
        bsearch_my(array, query, 0, array.length)
      end
    end
  end
end
