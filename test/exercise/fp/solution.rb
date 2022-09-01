module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        interest_array = array.map do |el|
          el['rating_kinopoisk'].to_f if el['country'].to_s.split(',').count >= 2 && !el['rating_kinopoisk'].to_f.zero?
        end.compact
        interest_array.reduce(:+) / interest_array.length
      end

      def chars_count(films, threshold)
        films.select { |el| el['rating_kinopoisk'].to_f >= threshold }.reduce(0) { |sum, el| sum + el['name'].count('и') }
      end
    end
  end
end
