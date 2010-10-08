# # this gemfile is only required for running the features/tests
#
# source :rubygems
#
# gem 'rails', '3.0.0'
# gem 'adva-core',     :path => File.expand_path('adva-core', '/home/chris/work/projects/adva-cms2')
# gem 'adva-blog',     :path => File.expand_path('adva-blog', '/home/chris/work/projects/adva-cms2')
# #gem 'adva-cart',     :path => File.expand_path('adva-cart', '/home/chris/work/projects/adva-cms2')
# #gem 'adva-catalog',  :path => File.expand_path('adva-catalog', '/home/chris/work/projects/adva-cms2')
# #gem 'adva-cnet',     :path => File.expand_path('adva-cnet', '/home/chris/work/projects/adva-cms2')
# #gem 'adva-contacts', :path => File.expand_path('adva-contacts', '/home/chris/work/projects/adva-cms2')
# gem 'adva-static',   :path => File.expand_path('adva-static', '/home/chris/work/projects/adva-cms2')
# gem 'adva-user',     :path => File.expand_path('adva-user', '/home/chris/work/projects/adva-cms2')
#
# # gem 'simple_nested_set', :path => '/Volumes/Users/sven/Development/projects/simple_nested_set'

require File.expand_path('../lib/bundler/repository', __FILE__)

source :rubygems

workspace '. ~/.projects ~/projects ~/Development/{projects,work} ~/.repositories'
adva_cms = repository('adva-cms2', :source => :local)

adva_cms.gem  'adva-blog'
adva_cms.gem  'adva-core'
adva_cms.gem  'adva-static'
adva_cms.gem  'adva-user'

gem 'rails', '3.0.0'
gem 'sqlite3-ruby', '1.2.5'
