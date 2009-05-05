module ToProc::Regexp
  def to_proc
    ::Proc.new do |target|
      self.map_pair do |target, *extras|
        (matches = target.match(self)) ? matches.to_a.first : nil
      end
    end
  end
end