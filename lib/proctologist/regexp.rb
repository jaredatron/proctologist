class Regexp
  # Allows you to match items in an enumerable by regular expression
  #
  #   people = [:Aaron, 'aaron@blowholeyak.com', 'Jared', 'jared@iconsaredeadlyicon.com']
  #   email_regexp = /\w+@\w+(\.\w+)+/
  #
  #   people.map(&email_regexp)
  #   => [nil, "aaron@blowholeyak.com", nil, "jared@iconsaredeadlyicon.com"]
  #
  #   people.find_all(&email_regexp)
  #   => ["aaron@blowholeyak.com", "jared@iconsaredeadlyicon.com"]
  def to_proc
    ::Proc.new do |target, *extras|
        (matches = target.to_s.match(self)) ? matches.to_a.first : nil
    end
  end
end