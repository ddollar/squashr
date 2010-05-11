class Squashr

  VERSION = "0.0.1"

  MKSQUASHFS_BIN = File.expand_path("../../ext/squashfs3.4/squashfs-tools/mksquashfs", __FILE__)

  def self.squash(source, target, options=[])
    %x{ #{MKSQUASHFS_BIN} #{source} #{target} #{options.join(' ')} }
  end

end
