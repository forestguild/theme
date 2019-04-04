Gem::Specification.new do |spec|
    spec.name          = "jekyll-theme-wow"
    spec.version       = "0.0.1"
    spec.authors       = ["Nikita Chernyi"]
    spec.email         = ["github@rakshazi.me"]

    spec.summary       = "World of Warcraft theme for Jekyll"
    spec.license       = "MIT"

    spec.metadata["plugin_type"] = "theme"
    spec.homepage = 'https://github.com/forestguild/theme'

    spec.files = `git ls-files -z`.split("\x0").select do |f|
        f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
    end

    spec.add_runtime_dependency "jekyll", "~> 3.5"
    spec.add_runtime_dependency "jekyll-wowdaily", "~> 1.0.0", ">= 1.0.0"
    spec.add_runtime_dependency "jekyll-forcewebp", "~> 1.0.0", ">= 1.0.0"
end
