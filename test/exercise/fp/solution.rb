module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        interest_array = array.select do |el|
          el['country'].to_s.split(',').count >= 2 && !el['rating_kinopoisk'].nil? && !el['rating_kinopoisk'].to_f.zero?
        end
        (interest_array.reduce(0) { |sum, el| sum + el['rating_kinopoisk'].to_f }) / interest_array.count
      end

      def chars_count(_films, _threshold)
        0
      end
    end
  end
end
