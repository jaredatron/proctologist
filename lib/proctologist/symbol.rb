class Symbol
  # Returns a Proc object which calles the method if the same name as the 
  # symbol on the object given
  #
  #   (1..3).collect(&:to_s)  #=> ["1", "2", "3"]
  def to_proc
    ::Proc.new do |target, *extras|
      target.__send__(self, *extras)
    end
  end
end