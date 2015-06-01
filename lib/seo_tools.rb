require 'sitemap'
require 'meta_tags'
require 'para'
require 'seo_tools/engine'

module SeoTools
  extend ActiveSupport::Autoload

  autoload :Controller
  autoload :MetaTags
  autoload :Routes
  autoload :Skeleton
  autoload :Sitemap


  mattr_accessor :host
  @@host = ENV['APP_DOMAIN']

  def self.configure
    block_given? ? yield(self) : self
  end

  def self.table_name_prefix
    'seo_tools_'
  end
end

require 'seo_tools/skeleton_component'
