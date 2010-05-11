## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'squashr'
  s.version           = '0.0.1'
  s.date              = '2010-05-11'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Short description used in Gem listings."
  s.description = "Long description. Maybe copied from the README."

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["John Doe"]
  s.email    = 'jdoe@example.com'
  s.homepage = 'http://example.com/NAME'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## This sections is only necessary if you have C extensions.
  s.require_paths << 'ext/squashfs3.4/squashfs-tools'
  s.extensions = %w[ext/squashfs3.4/squashfs-tools/extconf.rb]

  ## If your gem includes any executables, list them here.
  s.executables = ["squashr"]
  s.default_executable = 'squashr'

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.rdoc]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  #s.add_dependency('DEPNAME', [">= 1.1.0", "< 2.0.0"])

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  #s.add_development_dependency('DEVDEPNAME', [">= 1.1.0", "< 2.0.0"])

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    LICENSE
    README
    Rakefile
    bin/squashr
    ext/squashfs3.4/ACKNOWLEDGEMENTS
    ext/squashfs3.4/CHANGES
    ext/squashfs3.4/COPYING
    ext/squashfs3.4/INSTALL
    ext/squashfs3.4/OLD-READMEs/README-2.0
    ext/squashfs3.4/OLD-READMEs/README-2.1
    ext/squashfs3.4/OLD-READMEs/README-3.0
    ext/squashfs3.4/OLD-READMEs/README-3.1
    ext/squashfs3.4/OLD-READMEs/README-3.2
    ext/squashfs3.4/OLD-READMEs/README-3.3
    ext/squashfs3.4/OLD-READMEs/README-AMD64
    ext/squashfs3.4/PERFORMANCE.README
    ext/squashfs3.4/README
    ext/squashfs3.4/kernel-patches/README
    ext/squashfs3.4/kernel-patches/linux-2.6.12/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.14/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.16/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.18/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.20/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.22/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.23/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.24/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.25/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.26/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.27-rc4-next/squashfs3.4-patch
    ext/squashfs3.4/kernel-patches/linux-2.6.27-rc4/squashfs3.4-patch
    ext/squashfs3.4/squashfs-tools/Makefile
    ext/squashfs3.4/squashfs-tools/extconf.rb
    ext/squashfs3.4/squashfs-tools/global.h
    ext/squashfs3.4/squashfs-tools/mksquashfs.c
    ext/squashfs3.4/squashfs-tools/mksquashfs.h
    ext/squashfs3.4/squashfs-tools/read_fs.c
    ext/squashfs3.4/squashfs-tools/read_fs.h
    ext/squashfs3.4/squashfs-tools/sort.c
    ext/squashfs3.4/squashfs-tools/sort.h
    ext/squashfs3.4/squashfs-tools/squashfs_fs.h
    ext/squashfs3.4/squashfs-tools/unsquashfs.c
    lib/squashr.rb
    squashr.gemspec
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end