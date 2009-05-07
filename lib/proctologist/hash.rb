class Hash
  # Converts the key value pairs into method argument pairs and calls them
  # unorderly on the objects in the enumberable
  #
  #   module StringExtension
  #     def awesomize!
  #       "#{self.upcase} IS AWESOME!"
  #     end
  #   end
  #   
  #   ['jared','aaron'].map(&{:extend => StringExtension}).map(&{:awesomize! => nil})
  #   => ["JARED IS AWESOME!", "AARON IS AWESOME!"]
  #
  # You can pass multiple arguments like this
  #   {:method_name => [:first, :second]}
  #
  # If you actually want to pass and array as the first argument you'll need to do wrap
  # it in another array
  #
  #  {:method_name => [[1,2,3,4]]}
  #
  # due to the fact that passing nil to methods that accept only 0 arguments hashes like
  #   {:compact => nil}
  # have the nil stripped out and actually pass nothing to compact. If you should ever need
  # the nil, use the multiple arguments syntax 
  #   {:method_name => [nil]}
  def to_proc
    ::Proc.new do |target|
      self.inject(target) do |target, options, ass|
        method = options.shift
        options.compact! if options.find_all(&:nil?).size == options.size
        target.__send__(method, *options)
      end
    end
  end
end