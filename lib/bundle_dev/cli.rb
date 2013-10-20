module BundleDev
  class CLI < Thor

    default_task :install
    desc 'install', 'install development dependencies for your gem'
    def install
      if Bundler.default_lockfile.exist?
        puts 'Please remove the `Gemfile.lock` to install.'
      else
        Bundler::Installer.install Bundler.root, Definition.build
        puts 'Your bundle is complete!'
        puts 'Use `bundle show [gemname]` to see where a bundled gem is installed.'
      end
    end
  end
end
