module BundleDev
  class Dsl < Bundler::Dsl

    def gem(name, *args)
      options = args.last.is_a?(Hash) ? args.pop : {}
      if options[:type] == :development
        options[:type] = :runtime
        super name, *args, options
      end
    end
  end
end
