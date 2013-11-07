Gem::Specification.new do |s|
  s.name        = 'smart-spinner-cis'
  s.version     = '0.0.3'
  s.date        = '2013-11-01'
  s.summary     = "smart-spinner-ciss will provide spinner(ajax-loader) on page load"
  s.description = "smart-spinner-cis will provide spinner(ajax-loader) on page load"
  s.authors     = ["Anuradha Dindorkar"]
  s.email       = 'anuradha.d@cisinlabs.com'
  s.files       = Dir["{lib,app}/**/*", "[A-Z]*"]
  s.homepage    =
    'https://github.com/anuradha-d/smart-spinner-cis'
  s.require_paths = ["lib"]  

  s.license       = 'MIT'
  s.rubyforge_project = "jquery-rails"
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency "jquery-rails"
  s.add_dependency "railties"

end
