desc "Run specs"
task :spec do
  sh "#{FileUtils::RUBY} #{"-w" if RUBY_VERSION >= '3'} test/sequel_unsplit_test.rb"
end

task :default => :spec
