require 'rubygems'
gem 'thrift_client', '>= 0.7.0', '< 0.10'
require 'thrift_client'
gem 'simple_uuid' , '~> 0.4.0'
require 'simple_uuid'

require 'json' unless defined?(JSON)

here = File.expand_path(File.dirname(__FILE__))

class Cassandra ; end
unless Cassandra.respond_to?(:VERSION)
  require "#{here}/cassandra/1.2"
end

$LOAD_PATH << "#{here}/../vendor/#{Cassandra.VERSION}/gen-rb"
require "#{here}/../vendor/#{Cassandra.VERSION}/gen-rb/cassandra"

$LOAD_PATH << "#{here}"

require 'cassandra/extensions/thrift/bytes'
require 'cassandra/extensions/thrift/framed_transport'
require 'cassandra/helpers'
require 'cassandra/array'
require 'cassandra/time'
require 'cassandra/comparable'
require 'cassandra/long'
require 'cassandra/composite'
require 'cassandra/dynamic_composite'
require 'cassandra/columns'
require 'cassandra/protocol'
require 'cassandra/batch'
require "cassandra/#{Cassandra.VERSION}/columns"
require "cassandra/#{Cassandra.VERSION}/protocol"
require "cassandra/cassandra"
require "cassandra/#{Cassandra.VERSION}/cassandra"
unless Cassandra.VERSION.eql?("0.6")
  require "cassandra/column_family"
  require "cassandra/keyspace"
end
require 'cassandra/constants'
require 'cassandra/debug' if ENV['DEBUG']

begin
  require "cassandra_native"
rescue LoadError
  puts "Unable to load cassandra_native extension. Defaulting to pure Ruby libraries."
end
