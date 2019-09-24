require 'rubygems'
ENV['MT_NO_PLUGINS'] = '1' # Work around stupid autoloading of plugins
require 'minitest/autorun'
require 'minitest/spec'
require 'fileutils'
require 'rbconfig'

unsplit = File.join(File.dirname(File.expand_path(__FILE__)), '../bin/sequel-unsplit')
source = File.join(File.dirname(File.expand_path(__FILE__)), 'source.rb')
result = File.join(File.dirname(File.expand_path(__FILE__)), 'result.rb')

flags = %w'a A q s S'
combinations = (1..5).flat_map{|i| flags.combination(i).map{|x| "-#{x.sort.join}"}} + [""]
conf = RbConfig::CONFIG
ruby = ENV["RUBY"] || File.join(conf["bindir"], conf["ruby_install_name"] + conf["EXEEXT"]).sub(/.*\s.*/m, '"\&"')

describe "sequel-unsplit" do
  after do
    File.delete(result)
  end

  combinations.each do |flag|
    it "sequel-unsplit #{flag} should correctly modify file" do
      expected = File.join(File.dirname(File.expand_path(__FILE__)), 'expected', "source#{flag.gsub('A', '_A').gsub('S', '_S')}.rb")
      FileUtils.cp(source, result)

      if flag.empty?
        args = ruby, unsplit, result
      else
        args = ruby, unsplit, flag, result
      end

      system(*args)
      assert_equal File.read(expected), File.read(result)
    end
  end
end
