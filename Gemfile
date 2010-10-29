require File.expand_path('../lib/bundler/repository', __FILE__)

source :rubygems

workspace '. ~/.projects ~/projects ~/Development/{projects,work} ~/.repositories ~/work/projects'
adva_cms = repository('adva-cms2', :source => :local)

adva_cms.gem  'adva-blog'
adva_cms.gem  'adva-core'
adva_cms.gem  'adva-static'
adva_cms.gem  'adva-cache'
adva_cms.gem  'adva-markup'

gem 'rails', '3.0.0'
gem 'sqlite3-ruby', '1.2.5'
gem 'ruby-debug'

