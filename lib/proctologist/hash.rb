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
  def to_proc
    ::Proc.new do |target|
      self.inject(target) do |target, options, ass|
        method = options.shift
        options.compact! if options.find_all(&:present?).empty?
        target.__send__(method, *options)
      end
    end
  end
end