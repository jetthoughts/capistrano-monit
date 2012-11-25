# Capistrano task for Monit.
#
# Just add "require 'monit/capistrano'" in your Capistrano deploy.rb

Capistrano::Configuration.instance(:must_exist).load do
  namespace :monit do

    task :default do
      status
    end

    desc 'Monit status'
    task :status do
      sudo 'monit status'
    end

    namespace :process do
      %w(start stop restart).each do |event|
        desc "#{event.capitalize} monit process from managing processes"
        task event, except: {no_release: true} do
          sudo "/etc/init.d/monit #{event}"
        end
      end
    end

  end
end