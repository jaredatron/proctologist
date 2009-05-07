class String
  # Evals the given string as if it was called off the items in your enumerable
  #
  #   ['bill','peter','james'].map(&'.capitalize + " rocks!"')
  #   # => ["Bill rocks!", "Peter rocks!", "James rocks!"]
  def to_proc
    expression = self
    ::Proc.new do |target, *extras|
      eval('target'+expression)
    end    
  end
end