model_files = %w( account alert call_member call chat_member chat contact_group contact
                  conversation message participant sms transfer video voicemail)
model_files.each{ |file| require File.join(File.dirname(__FILE__), "models", "#{file}.rb")}

module Skype
  class DbMeta # CREATE TABLE DbMeta (
    include DataMapper::Resource
  
    storage_names[:default] = "DbMeta"
    property :meta_key, Text, :key => true # key TEXT NOT NULL PRIMARY KEY,
    property :value, Text                  # value TEXT);
  end

  class LegacyMessage # CREATE TABLE LegacyMessages (
    include DataMapper::Resource

    property :id,           Serial  # id, Serial
    property :is_permanent, Integer # is_permanent INTEGER);
  end
end

