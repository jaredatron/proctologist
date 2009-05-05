= to_proc

* http://github.com/deadlyicon/to_proc

== DESCRIPTION:

Add additional to_proc methods on objects like Symbol, Regexp, String, Array, Hash and more

== FEATURES:

Symbol#to_proc
String#to_proc
Regexp#to_proc
Hash#to_proc
Array#to_proc
Class#to_proc

== SYNOPSIS:

Symbol#to_proc
  %w(hello from the template).map(:&:upcase)
  # => ['HELLO', 'FROM', 'THE', 'TEMPLATE']

String#to_proc
  # => ?

Regexp#to_proc
  %w(Jared Bob Sam Steve Albert).find_all(:/.*e.*/)
  # => ['Jared', 'Steve', 'Albert']
  
  %w(Jared Bob Sam Steve Albert).map(:/.*e.*/)
  # => ['Jared', nil, nil, 'Steve', 'Albert']
  
Hash#to_proc
  # => ?
  
Array#to_proc
  # => ?
  
Class#to_proc
  class InYourFace
    def initialize(value)
    end
  end
  
  %w(Steve Bill George).map(&InYourFace)
  # => [#<InYourFace:0x12b45ac>, #<InYourFace:0x12b004c>, #<InYourFace:0x12abaec>]
  

== INSTALL:

sudo gem install deadlyicon-to_proc --source http:://gems.github.com

== LICENSE:

(The MIT License)

Copyright (c) 2009 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
