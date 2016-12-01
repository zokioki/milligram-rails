require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "milligram/version"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :milligram do
  namespace :assets do
    desc 'Update Milligram\'s assets.'
    task update: :clean do
      version = ARGV[1] || "v#{Milligram::VERSION.sub(/.\d+$/, '')}"

      sh 'git clone git@github.com:milligram/milligram.git milligram_source'
      sh "cd milligram_source && git checkout tags/#{version}"
      sh 'cp -R milligram_source/src/ vendor/assets/stylesheets/milligram/'

      File.open('vendor/assets/stylesheets/milligram.scss', 'w') do |f|
        f.write('@import "milligram/milligram.sass";')
      end

      puts "\n=*=*=*=*=*=*=*=*=*=*\n=* ASSETS UPDATED! *=\n=*=*=*=*=*=*=*=*=*=*\n"
    end

    desc 'Remove previous Milligram assets.'
    task :clean do
      sh 'rm -rf vendor'
      sh 'rm -rf milligram_source'
      sh 'mkdir -p vendor/assets/stylesheets/'
    end
  end
end
