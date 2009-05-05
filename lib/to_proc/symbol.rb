module ToProc::Symbol
  def to_proc
    ::Proc.new do |target, *extras|
      target.__send__(self, *extras)
    end
  end
end