require 'dm-core'

module Skype
  def self.setup(repo, repo_path)
    repository = DataMapper.setup(repo, repo_path)
    DataMapper.repository(repo).adapter.resource_naming_convention = DataMapper::NamingConventions::Resource::UnderscoredAndPluralizedWithoutModule
    require File.join(File.dirname(__FILE__), 'dm-skype', "models")
    repository
  end
end
