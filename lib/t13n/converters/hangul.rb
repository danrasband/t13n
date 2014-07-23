require './hangul/yale'
require './hangul/mccune_reischauer'
require './hangul/revised_romanization'

class T13n::WritingSystems::Hangul
  module Types
    YALE = :yale
    MCCUNE_REISCHAUER = :mccune_reischauer
    REVISED_ROMANIZATION = :revised_romanization
  end

  attr_accessor :type

  def initialize(t13n_type = :yale)
    @type = t13n_type
  end

  def to_roman(utf8_str)
    ucs_chars = T13n::Ucs.to_ucs_array(utf8_str)

    words = parse(ucs_chars)
  end

  def to_hangul(utf8_str)
    ucs_chars = T13n::Ucs.to_ucs_array(utf8_str)

    words = parse(ucs_chars)
  end

  private

  def parse(ucs_chars)

  end
end
