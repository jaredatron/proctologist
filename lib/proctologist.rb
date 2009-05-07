class Proctologist
  RUBY_VERSION = '< 1.8.6'
  VERSION = '0.0.1'
end

$:.unshift File.dirname(__FILE__)
require 'proctologist/class'  # unless Class.new.respond_to? :to_proc
require 'proctologist/symbol' # unless Symbol.new.respond_to? :to_proc
require 'proctologist/string' # unless String.new.respond_to? :to_proc
require 'proctologist/regexp' # unless Regexp.new.respond_to? :to_proc
require 'proctologist/array'  # unless Array.new.respond_to? :to_proc
require 'proctologist/hash'   # unless Hash.new.respond_to? :to_proc
