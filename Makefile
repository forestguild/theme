build:
	rm -f ./*.gem
	gem build jekyll-theme-forestguild.gemspec

push:
	gem push ./*.gem
