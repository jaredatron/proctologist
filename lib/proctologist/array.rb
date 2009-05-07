class Array
  # Based on Symbol#to_proc but allows you to easily collect modified 
  # values for your enumerable
  #  
  #   ['same','steve','frank'].map(&[:upcase,:reverse])
  #   => [["SAME", "emas"], ["STEVE", "evets"], ["FRANK", "knarf"]]
  def to_proc
    ::Proc.new do |target, *extras|
      self.map do |method|
        target.__send__(method, *extras)
      end
    end
  end
end