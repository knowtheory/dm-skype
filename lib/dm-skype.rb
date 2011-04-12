require 'dm-core'

module Skype
  module NamingConventions
    module Resource
      def self.call(name)
        DataMapper::Inflector.pluralize(DataMapper::Inflector.demodulize(name))
      end
    end
  end
  
  def self.setup(repo, repo_path)
    repository = DataMapper.setup(repo, repo_path)
    DataMapper.repository(repo).adapter.resource_naming_convention = NamingConventions::Resource
    require File.join(File.dirname(__FILE__), 'dm-skype', "models")
    repository
  end
end
