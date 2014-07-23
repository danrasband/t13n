class T13n::UCS

  def self.to_ucs_array(utf8_str)
    utf8_str = utf8_str.force_encoding(:utf8)
    ucs_chars = []

    bytesize = utf8_str.bytesize
    i = 0
    while i < bytesize do

    end

    ucs_chars
  end

  def self.to_utf8_str(ucs_chars)
    ucs_chars.each do |ucs_char|
    end
  end
end
