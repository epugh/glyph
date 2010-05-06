# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{glyph}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Fabio Cevasco"]
  s.date = %q{2010-05-06}
  s.default_executable = %q{glyph}
  s.description = %q{Glyph is a framework for structured document authoring.}
  s.email = %q{h3rald@h3rald.com}
  s.executables = ["glyph"]
  s.extra_rdoc_files = [
    "CHANGELOG.textile",
     "LICENSE.textile",
     "README.textile"
  ]
  s.files = [
    "AUTHORS.textile",
     "CHANGELOG.textile",
     "LICENSE.textile",
     "README.textile",
     "Rakefile",
     "VERSION",
     "bin/glyph",
     "book/config.yml",
     "book/document.glyph",
     "book/images/glyph.png",
     "book/images/glyph.svg",
     "book/lib/macros/reference.rb",
     "book/output/html/glyph.html",
     "book/output/html/images/glyph.png",
     "book/output/html/images/glyph.svg",
     "book/output/pdf/glyph.pdf",
     "book/script/authors",
     "book/script/changelog",
     "book/script/compile.rb",
     "book/script/license",
     "book/script/prof",
     "book/script/readme",
     "book/snippets.yml",
     "book/text/acknowledgement.glyph",
     "book/text/authoring.glyph",
     "book/text/changelog.glyph",
     "book/text/extending.glyph",
     "book/text/getting_started.glyph",
     "book/text/introduction.glyph",
     "book/text/license.glyph",
     "book/text/ref_commands.glyph",
     "book/text/ref_config.glyph",
     "book/text/ref_macros.glyph",
     "book/text/troubleshooting.glyph",
     "config.yml",
     "document.glyph",
     "glyph.gemspec",
     "lib/glyph.rb",
     "lib/glyph/commands.rb",
     "lib/glyph/config.rb",
     "lib/glyph/document.rb",
     "lib/glyph/glyph_language.rb",
     "lib/glyph/glyph_language.treetop",
     "lib/glyph/interpreter.rb",
     "lib/glyph/macro.rb",
     "lib/glyph/macro_validators.rb",
     "lib/glyph/node.rb",
     "lib/glyph/system_extensions.rb",
     "macros/common.rb",
     "macros/filters.rb",
     "macros/html/block.rb",
     "macros/html/inline.rb",
     "macros/html/structure.rb",
     "spec/files/article.glyph",
     "spec/files/container.textile",
     "spec/files/document.glyph",
     "spec/files/document_with_toc.glyph",
     "spec/files/included.textile",
     "spec/files/ligature.jpg",
     "spec/files/markdown.markdown",
     "spec/files/test.sass",
     "spec/lib/commands_spec.rb",
     "spec/lib/config_spec.rb",
     "spec/lib/document_spec.rb",
     "spec/lib/glyph_spec.rb",
     "spec/lib/interpreter_spec.rb",
     "spec/lib/macro_spec.rb",
     "spec/lib/macro_validators_spec.rb",
     "spec/lib/node_spec.rb",
     "spec/macros/filters_spec.rb",
     "spec/macros/macros_spec.rb",
     "spec/macros/textile_spec.rb",
     "spec/spec_helper.rb",
     "spec/tasks/generate_spec.rb",
     "spec/tasks/load_spec.rb",
     "spec/tasks/project_spec.rb",
     "styles/coderay.css",
     "styles/css3.css",
     "styles/default.css",
     "styles/ultraviolet/active4d.css",
     "styles/ultraviolet/all_hallows_eve.css",
     "styles/ultraviolet/amy.css",
     "styles/ultraviolet/blackboard.css",
     "styles/ultraviolet/brilliance_black.css",
     "styles/ultraviolet/brilliance_dull.css",
     "styles/ultraviolet/cobalt.css",
     "styles/ultraviolet/dawn.css",
     "styles/ultraviolet/eiffel.css",
     "styles/ultraviolet/espresso_libre.css",
     "styles/ultraviolet/idle.css",
     "styles/ultraviolet/iplastic.css",
     "styles/ultraviolet/lazy.css",
     "styles/ultraviolet/mac_classic.css",
     "styles/ultraviolet/magicwb_amiga.css",
     "styles/ultraviolet/pastels_on_dark.css",
     "styles/ultraviolet/slush_poppies.css",
     "styles/ultraviolet/spacecadet.css",
     "styles/ultraviolet/sunburst.css",
     "styles/ultraviolet/twilight.css",
     "styles/ultraviolet/zenburnesque.css",
     "tasks/generate.rake",
     "tasks/load.rake",
     "tasks/project.rake"
  ]
  s.homepage = %q{http://www.h3rald.com/glyph/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Glyph -- A Ruby-powered Document Authoring Framework}
  s.test_files = [
    "spec/lib/commands_spec.rb",
     "spec/lib/config_spec.rb",
     "spec/lib/document_spec.rb",
     "spec/lib/glyph_spec.rb",
     "spec/lib/interpreter_spec.rb",
     "spec/lib/macro_spec.rb",
     "spec/lib/macro_validators_spec.rb",
     "spec/lib/node_spec.rb",
     "spec/macros/filters_spec.rb",
     "spec/macros/macros_spec.rb",
     "spec/macros/textile_spec.rb",
     "spec/spec_helper.rb",
     "spec/tasks/generate_spec.rb",
     "spec/tasks/load_spec.rb",
     "spec/tasks/project_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gli>, [">= 0.3.1"])
      s.add_runtime_dependency(%q<extlib>, [">= 0.9.12"])
      s.add_runtime_dependency(%q<treetop>, [">= 0.4.3"])
      s.add_runtime_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<rspec>, [">= 1.1.11"])
      s.add_development_dependency(%q<yard>, [">= 1.5.4"])
      s.add_development_dependency(%q<jeweler>, ["= 1.4.0"])
      s.add_development_dependency(%q<directory_watcher>, [">= 1.3.2"])
      s.add_development_dependency(%q<haml>, [">= 2.2.3"])
      s.add_development_dependency(%q<RedCloth>, [">= 4.2.3"])
      s.add_development_dependency(%q<bluecloth>, [">= 2.0.7"])
      s.add_development_dependency(%q<coderay>, [">= 0.9.3"])
      s.add_development_dependency(%q<ruby-prof>, [">= 0.8.1"])
    else
      s.add_dependency(%q<gli>, [">= 0.3.1"])
      s.add_dependency(%q<extlib>, [">= 0.9.12"])
      s.add_dependency(%q<treetop>, [">= 0.4.3"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<rspec>, [">= 1.1.11"])
      s.add_dependency(%q<yard>, [">= 1.5.4"])
      s.add_dependency(%q<jeweler>, ["= 1.4.0"])
      s.add_dependency(%q<directory_watcher>, [">= 1.3.2"])
      s.add_dependency(%q<haml>, [">= 2.2.3"])
      s.add_dependency(%q<RedCloth>, [">= 4.2.3"])
      s.add_dependency(%q<bluecloth>, [">= 2.0.7"])
      s.add_dependency(%q<coderay>, [">= 0.9.3"])
      s.add_dependency(%q<ruby-prof>, [">= 0.8.1"])
    end
  else
    s.add_dependency(%q<gli>, [">= 0.3.1"])
    s.add_dependency(%q<extlib>, [">= 0.9.12"])
    s.add_dependency(%q<treetop>, [">= 0.4.3"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<rspec>, [">= 1.1.11"])
    s.add_dependency(%q<yard>, [">= 1.5.4"])
    s.add_dependency(%q<jeweler>, ["= 1.4.0"])
    s.add_dependency(%q<directory_watcher>, [">= 1.3.2"])
    s.add_dependency(%q<haml>, [">= 2.2.3"])
    s.add_dependency(%q<RedCloth>, [">= 4.2.3"])
    s.add_dependency(%q<bluecloth>, [">= 2.0.7"])
    s.add_dependency(%q<coderay>, [">= 0.9.3"])
    s.add_dependency(%q<ruby-prof>, [">= 0.8.1"])
  end
end

