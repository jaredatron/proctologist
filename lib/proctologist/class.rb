class Class
  # Allows you to easily create new instancess if a class. The proc accepts either a single argument
  # or an array of arguments to pass to [class].new
  #
  #   class Dog
  #     def initialize(name, size=1)
  #       @name = name
  #       @size = size
  #     end
  #   end
  #   
  #   [:fido, [:ralph,2], :guy].map(&Dog)
  #   => [#<Dog:0x39dcff8 @size=1, @name=:fido>, #<Dog:0x39dcf58 @size=2, @name=:ralph>, #<Dog:0x39dceb8 @size=1, @name=:guy>]
  def to_proc
    ::Proc.new do |*args|
      self.new(*[args].flatten)
    end
  end
end