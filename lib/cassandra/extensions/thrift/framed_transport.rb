class Thrift::FramedTransport
  def write(buf,sz=nil)
    return @transport.write(buf) unless @write

    @wbuf << (sz ? buf[0...sz] : buf).dup.force_encoding('binary')
  end
end
