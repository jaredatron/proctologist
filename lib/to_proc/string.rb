require 'pp'

# Usage items.map(&'key')
class String
  def to_proc
    lambda do |obj, *args| 
      if obj.is_a?(Hash)
        obj[self.to_s]   if obj.has_key? self.to_s
        obj[self.to_sym] if obj.has_key? self.to_sym
      else
        obj.__send__(self, *args) if obj.respond_to? self.to_sym
      end
    end
  end
end

pp \
[
  {
    :to_s => 123,
    :what => 'you know',
  },
  {
    :to_s => 666,
    :what => 'you know',
  },
  {
    :to_s => 1232131,
    :what => 'you know',
  },
  4444444,
  {
    :to_s => 99999,
    :what => 'you know',
  },
].map(&'to_s')

