# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cassandra"
  s.version = "0.18.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0.8") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Weaver, Ryan King"]
  s.date = "2012-09-26"
  s.description = "A Ruby client for the Cassandra distributed database."
  s.email = ""
  s.executables = ["cassandra_helper"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.md", "bin/cassandra_helper", "ext/cassandra_native.c", "ext/extconf.rb", "lib/cassandra.rb", "lib/cassandra/0.6.rb", "lib/cassandra/0.6/cassandra.rb", "lib/cassandra/0.6/columns.rb", "lib/cassandra/0.6/protocol.rb", "lib/cassandra/0.7.rb", "lib/cassandra/0.7/cassandra.rb", "lib/cassandra/0.7/columns.rb", "lib/cassandra/0.7/protocol.rb", "lib/cassandra/0.8.rb", "lib/cassandra/0.8/cassandra.rb", "lib/cassandra/0.8/columns.rb", "lib/cassandra/0.8/protocol.rb", "lib/cassandra/1.0.rb", "lib/cassandra/1.0/cassandra.rb", "lib/cassandra/1.0/columns.rb", "lib/cassandra/1.0/protocol.rb", "lib/cassandra/1.1.rb", "lib/cassandra/1.1/cassandra.rb", "lib/cassandra/1.1/columns.rb", "lib/cassandra/1.1/protocol.rb", "lib/cassandra/array.rb", "lib/cassandra/batch.rb", "lib/cassandra/cassandra.rb", "lib/cassandra/column_family.rb", "lib/cassandra/columns.rb", "lib/cassandra/comparable.rb", "lib/cassandra/composite.rb", "lib/cassandra/constants.rb", "lib/cassandra/debug.rb", "lib/cassandra/dynamic_composite.rb", "lib/cassandra/helpers.rb", "lib/cassandra/keyspace.rb", "lib/cassandra/long.rb", "lib/cassandra/mock.rb", "lib/cassandra/protocol.rb", "lib/cassandra/time.rb"]
  s.files = `git ls-files`.split($/)
  s.homepage = "http://github.com/twitter/cassandra"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Cassandra", "--main", "README.md"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "cassandra"
  s.rubygems_version = "1.8.17"
  s.summary = "A Ruby client for the Cassandra distributed database."
  s.test_files = ["test/cassandra_client_test.rb", "test/cassandra_mock_test.rb", "test/cassandra_test.rb", "test/comparable_types_test.rb", "test/composite_type_test.rb", "test/eventmachine_test.rb", "test/ordered_hash_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3
    s.add_dependency 'thin'

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thrift_client>, ["< 0.10", ">= 0.7.0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<simple_uuid>, ["~> 0.4.0"])
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<thrift_client>, ["< 0.10", ">= 0.7.0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<simple_uuid>, ["~> 0.4.0"])
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<thrift_client>, ["< 0.9", ">= 0.7.0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<simple_uuid>, ["~> 0.4.0"])
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
