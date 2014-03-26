#require "bundler/gem_tasks"

require 'rake/extensiontask'
require 'rubygems/package_task'

##
# Rake::ExtensionTask comes from the rake-compiler and understands how to
# build and cross-compile extensions.
#
# See https://github.com/luislavena/rake-compiler for details

Rake::ExtensionTask.new 'gocr' do |ext|

  # This causes the shared object to be placed in lib/my_malloc/my_malloc.so
  #
  # It allows lib/my_malloc.rb to load different versions if you ship a
  # precompiled extension that supports multiple ruby versions.

  ext.lib_dir = 'lib/gocr'
end

s = Gem::Specification.new 'gocr', '0.5.0' do |s|
  s.summary = 'my gocr wrapper'
  s.authors = %w[zyablitskiy@gmail.com]

  # this tells RubyGems to build an extension upon install

  s.extensions = %w[ext/gocr/extconf.rb]

  # naturally you must include the extension source in the gem

  #s.files = `git ls-files`.split($/)
  s.files = %w[
    Rakefile
    ext/gocr/extconf.rb
    ext/gocr/gocr.c
    lib/hello.rb
  ]
end

# The package task builds the gem in pkg/my_malloc-1.0.gem so you can test
# installing it.

Gem::PackageTask.new s do end

# This isn't a good test, but does provide a sanity check

task test: %w[compile] do
  ruby '-Ilib', '-rgocr', '-e', 'p Hello.recognize("name")'
#  ruby '-Ilib', '-rgocr', '-e', 'p 3'
end

task default: :test


