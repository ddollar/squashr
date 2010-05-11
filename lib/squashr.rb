class Squashr

  class SourceDirNotFound  < Exception; end
  class SourceNotDirectory < Exception; end
  class TargetExists       < Exception; end

  VERSION = "0.0.1"

  MKSQUASHFS_BIN = File.expand_path("../../ext/squashfs3.4/squashfs-tools/mksquashfs", __FILE__)

  def self.squash(source, target, options=[])
    raise SourceDirNotFound  unless File.exist?(source)
    raise SourceNotDirectory unless File.directory?(source)
    raise TargetExists       if     File.exist?(target)

    %x{ #{MKSQUASHFS_BIN} #{source} #{target} #{options.join(' ')} }
  end

end
