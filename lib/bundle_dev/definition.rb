module BundleDev
  class Definition

    def self.build
      gemfile = Bundler::SharedHelpers.default_gemfile
      gemfile = Pathname.new(gemfile).expand_path
      if not gemfile.file?
        raise GemfileNotFound, "#{gemfile} not found"
      end

      lockfile = Bundler::SharedHelpers.default_lockfile
      unlock = {}

      Dsl.evaluate gemfile, lockfile, unlock
    end
  end
end
