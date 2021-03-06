# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cap-elb/version"

Gem::Specification.new do |s|
	s.name        = "cap-elb"
	s.version     = Cap::Elb::VERSION
	s.authors     = ["Dan Miley"]
	s.email       = ["dan.miley@gmail.com"]
	s.homepage    = "http://github.com/danmiley/cap-elb"
	s.summary     = %q{Capistrano can perform tasks on EC2 intstance managed by individual Amazon ELB instances. New: Now works with VPC managed ELBs.}
	s.description = %q{Capistrano can perform tasks on the EC2 instances managed by named Amazon ELB instances. New: Now works with VPC managed ELBs.}
#       Various filters are qvailable to allow EC2 instance top level metadata and tags to determine whether the task should be applied on the given instance.

	s.rubyforge_project = "cap-elb"

	s.files         = `git ls-files`.split("\n")
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.require_paths = ["lib"]

	s.add_dependency "right_aws"
	s.add_dependency "capistrano-ext"  # required for multistage feature
	s.add_development_dependency "rspec"

end
