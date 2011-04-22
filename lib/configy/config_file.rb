module Configy
  class ConfigFile
    def initialize(file)
      @file = file
    end

    def file_path
      File.join(Configy.load_path, "#{@file.to_s}.yml")
    end

    def local_file_path
      File.join(Configy.load_path, "#{@file.to_s}.local.yml")
    end

    def method_missing(param)
      build_config if should_build_config?
      @app_config.send(param)
    end

    def should_build_config?
      @app_config.nil? ||
      @file_mtime && @file_mtime < File.mtime(file_path) ||
      @local_file_mtime && @local_file_mtime < File.mtime(local_file_path)
    end

    def build_config
      @app_config = Configy::Configuration.new
      @app_config.use_file!(file_path)
      @file_mtime = File.mtime(file_path)

      if File.exists?(local_file_path)
        @app_config.use_file!(local_file_path)
        @local_file_mtime = File.mtime(local_file_path)
      end

      @app_config.use_section!(Configy.section)
    end
  end

end