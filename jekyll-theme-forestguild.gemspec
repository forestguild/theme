Gem::Specification.new do |s|
    s.name        = 'jekyll-theme-forestguild'
    s.version     = '1.0.6'
    s.date        = '2019-04-08'
    s.summary     = "World of Warcraft theme for Jekyll"
    s.description = "World of Warcraft theme for Jekyll, developed for https://forestguild.club (use that website as example)"
    s.metadata["plugin_type"] = "theme"
    s.authors     = ["Nikita Chernyi"]
    s.email       = 'github@rakshazi.me'
    s.files = `git ls-files -z`.split("\x0").select do |f|
        f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
    end
    s.homepage    = 'https://github.com/forestguild/theme'
    s.license     = 'MIT'
    s.metadata = {
        "bug_tracker_uri"   => "https://github.com/forestguild/theme",
        "changelog_uri"     => "https://github.com/forestguild/theme/releases",
        "documentation_uri" => "https://github.com/forestguild/theme/blob/master/README.md",
        "homepage_uri"      => "https://github.com/forestguild/theme",
        "source_code_uri"   => "https://github.com/forestguild/theme",
    }
    s.required_ruby_version = '>=2.0.0'
    s.add_runtime_dependency 'jekyll', '~> 3.8.5', '>=3.0.0'
    s.add_runtime_dependency "jekyll-forcewebp", "~> 1.0.0", ">= 1.0.0"
    s.add_runtime_dependency "jekyll-linkfilter", "~> 1.0.0", ">= 1.0.0"
end
