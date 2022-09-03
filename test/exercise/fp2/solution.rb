module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each(element = 0, &block)
        return self if element >= length

        yield self[element]

        my_each(element + 1, &block)
      end

      # Написать свою функцию my_map
      def my_map(&block)
        my_reduce(MyArray.new) { |acc, element| acc << block.call(element) }
      end

      # Написать свою функцию my_compact
      def my_compact
        my_reduce(MyArray.new) { |acc, element| element.nil? ? acc : acc << element }
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil, element = 0, &block)
        return acc if element >= length

        acc = acc.nil? ? self[0] : block.call(acc, self[element])
        my_reduce(acc, element + 1, &block)
      end
    end
  end
end
