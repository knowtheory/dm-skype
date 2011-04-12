module Skype
  class ChatMember                    # CREATE TABLE ChatMembers (
    include DataMapper::Resource

    property :id,             Serial # id, Serial
    property :is_permanent,   Integer # is_permanent, Integer
    property :chatname,       Text    # chatname, Text
    property :identity,       Text    # identity, Text
    property :role,           Integer # role, Integer
    property :is_active,      Integer # is_active, Integer
    property :cur_activities, Integer # cur_activities, Integer
    property :adder,          Text    # adder TEXT);

    # CREATE INDEX IX_ChatMembers_chatname ON ChatMembers (chatname);
    # CREATE INDEX IX_ChatMembers_identity ON ChatMembers (identity);
    
    belongs_to :contact, :child_key => [:identity], :parent_key => [:skypename]
  end
end
