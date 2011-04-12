module Skype
  class ContactGroup                                  # CREATE TABLE ContactGroups (
    include DataMapper::Resource
  
    property :id,                             Serial  # id, Serial
    property :is_permanent,                   Integer # is_permanent, Integer
    property :type,                           Integer # type, Integer
    property :custom_group_id,                Integer # custom_group_id, Integer
    property :given_displayname,              Text    # given_displayname, Text
    property :nrofcontacts,                   Integer # nrofcontacts, Integer
    property :nrofcontacts_online,            Integer # nrofcontacts_online, Integer
    property :type_old,                       Integer # type_old, Integer
    property :proposer,                       Text    # proposer, Text
    property :description,                    Text    # description, Text
    property :associated_chat,                Text    # associated_chat, Text
    property :members,                        Text    # members, Text
    property :cbl_id,                         Integer # cbl_id, Integer
    property :cbl_blob,                       Binary  # cbl_blob BLOB,
    property :fixed,                          Integer # fixed, Integer
    property :keep_sharedgroup_contacts,      Integer # keep_sharedgroup_contacts, Integer
    property :chats,                          Text    # chats, Text
    property :extprop_cgroup_is_hidden,       Integer # extprop_cgroup_is_hidden, Integer
    property :extprop_cgroup_sortorder_value, Integer # extprop_cgroup_sortorder_value, Integer
    property :extprop_cgroup_is_expanded,     Integer # extprop_cgroup_is_expanded, Integer);

    # CREATE INDEX IX_ContactGroups_given_displayname ON ContactGroups (given_displayname);
  end
end
