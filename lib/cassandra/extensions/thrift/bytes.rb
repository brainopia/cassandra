module Thrift::Bytes
  def self.convert_to_utf8_byte_buffer(string)
    string.dup.force_encoding(Encoding::BINARY)
  end

  def self.convert_to_string(buffer)
    buffer
  end
end
