#!/usr/bin/env ruby
$: << File.expand_path(File.dirname(__FILE__) + '/lib')
require 'rubygems'
require 'yard'
require 'rake/clean'
require 'rake/gempackagetask'
require 'spec/rake/spectask'
require 'glyph'

task :default => :spec

gemspec = eval(File.read('glyph.gemspec'))

Rake::GemPackageTask.new(gemspec) { |pkg| }

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb', 'README.textile', 'lib/*.rb'] 
	t.options = ['--no-private']
end

desc "Run all specs"
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

FileList['tasks/**/*.rake'].each { |t| load t}
