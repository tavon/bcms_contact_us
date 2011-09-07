Gem::Specification.new do |spec|
  spec.name = "bcms_contact_us"
  spec.rubyforge_project = spec.name
  spec.version = "1.0.1"
  spec.summary = "A Bcms Contact Us Module for BrowserCMS"
  spec.author = "John Hwang"
  spec.email = "johnyhwang@gmail.com"
  spec.homepage = "http://www.github.com/tavon/bcms_contact_us"
  spec.files += Dir["app/**/*"]
  spec.files -= Dir["app/views/layouts/templates/default.html.erb"]
  spec.files += Dir["db/migrate/*.rb"]
  spec.files -= Dir["db/migrate/*_browsercms_*.rb"]
  spec.files += Dir["lib/**/*"]
  spec.files -= Dir["lib/tasks/build_gem.rake"]
  spec.files += Dir["public/bcms/contact_us/**/*"]
  spec.files += Dir["LICENSE.txt"]
  spec.files += Dir["GPL.txt"]
  spec.files += Dir["Gemfile"]
  spec.files += Dir["Copyright.txt"]
  spec.has_rdoc = false
  spec.extra_rdoc_files = ["README"]

  spec.add_dependency('browsercms', "~> 3.3.1")

end