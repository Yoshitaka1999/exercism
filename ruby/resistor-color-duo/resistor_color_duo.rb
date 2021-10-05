class ResistorColorDuo
    RESISTORS = {
      "black" => 0,
      "brown" => 1,
      "orange" => 3,
      "yellow" => 4,
      "green" => 5,
      "blue" => 6,
      "violet" => 7,
      "grey" => 8,
    }
    def self.value(colors)
        colors.take(2).map { |color| RESISTORS[color] }.join.to_i
    end
 end
  