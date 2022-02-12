class Hamming
    VERSION = 1
    def self.compute(strand_one, strand_two)
      fail ArgumentError, "Strands of unequal length are not valid" if strand_one.size != strand_two.size
      strand_one.chars.zip(strand_two.chars).count {|a, b| a != b }
    end
  end
