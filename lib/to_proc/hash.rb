module ToProc::Hash
  def map_pair(&block)
    new_hash = self.class.new
    self.each_pair do |key, value|
      new_hash[key] = block.call(key, value)
    end
    new_hash
  end
  
  def to_proc
    ::Proc.new do |target|
      self.map_pair do |method, options|
        target.__send__(method, *options )
      end
    end
  end
end