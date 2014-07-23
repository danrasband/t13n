class T13n::UTF8
  ONE_BYTE_MASK   = 0b00000000
  TWO_BYTE_MASK   = 0b11000000
  THREE_BYTE_MASK = 0b11100000
  FOUR_BYTE_MASK  = 0b11110000

  class << self
    def num_bytes_in_char(first_byte)
      if FOUR_BYTE_MASK == first_byte & FOUR_BYTE_MASK
        4
      elsif THREE_BYTE_MASK == first_byte & THREE_BYTE_MASK
        3
      elsif TWO_BYTE_MASK == first_byte & TWO_BYTE_MASK
        2
      elsif ONE_BYTE_MASK == first_byte & ONE_BYTE_MASK
        1
      end
    end
  end
end
