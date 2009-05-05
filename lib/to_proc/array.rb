module ToProc::Array
  def to_proc
    ::Proc.new do |target, *extras|
      self.map do |method|
        target.__send__(method, *extras)
      end
    end
  end
end