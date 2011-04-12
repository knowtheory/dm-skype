module Skype
  class Chat                                           # CREATE TABLE Chats (
    include DataMapper::Resource

    property :id,                             Serial # id INTEGER NOT NULL PRIMARY KEY,
    property :is_permanent,                   Integer # is_permanent, Integer
    property :name,                           Text    # name, Text
    property :options,                        Integer # options, Integer
    property :friendlyname,                   Text    # friendlyname, Text
    property :description,                    Text    # description, Text
    property :timestamp,                      Integer # timestamp, Integer
    property :activity_timestamp,             Integer # activity_timestamp, Integer
    property :dialog_partner,                 Text    # dialog_partner, Text
    property :adder,                          Text    # adder, Text
    property :type,                           Integer # type, Integer
    property :mystatus,                       Integer # mystatus, Integer
    property :myrole,                         Integer # myrole, Integer
    property :posters,                        Text    # posters, Text
    property :participants,                   Text    # participants, Text
    property :applicants,                     Text    # applicants, Text
    property :banned_users,                   Text    # banned_users, Text
    property :name_text,                      Text    # name_text, Text
    property :topic,                          Text    # topic, Text
    property :topic_xml,                      Text    # topic_xml, Text
    property :guidelines,                     Text    # guidelines, Text
    property :picture,                        Binary  # picture BLOB,
    property :alertstring,                    Text    # alertstring, Text
    property :is_bookmarked,                  Integer # is_bookmarked, Integer
    property :passwordhint,                   Text    # passwordhint, Text
    property :unconsumed_suppressed_msg,      Integer # unconsumed_suppressed_msg, Integer
    property :unconsumed_normal_msg,          Integer # unconsumed_normal_msg, Integer
    property :unconsumed_elevated_msg,        Integer # unconsumed_elevated_msg, Integer
    property :unconsumed_msg_voice,           Integer # unconsumed_msg_voice, Integer
    property :activemembers,                  Text    # activemembers, Text
    property :state_data,                     Binary  # state_data BLOB,
    property :lifesigns,                      Integer # lifesigns, Integer
    property :last_change,                    Integer # last_change, Integer
    property :first_unread_message,           Integer # first_unread_message, Integer
    property :pk_type,                        Integer # pk_type, Integer
    property :dbpath,                         Text    # dbpath, Text
    property :split_friendlyname,             Text    # split_friendlyname, Text
    property :conv_dbid,                      Integer # conv_dbid, Integer
    property :extprop_hide_from_history,      Integer # extprop_hide_from_history, Integer
    property :extprop_chat_aux_type,          Integer # extprop_chat_aux_type, Integer
    property :extprop_chat_sort_order,        Integer # extprop_chat_sort_order, Integer
    property :extprop_mark_read_immediately,  Integer # extprop_mark_read_immediately Integer);

    # CREATE INDEX IX_Chats_activity_timestamp ON Chats (activity_timestamp);
    # CREATE INDEX IX_Chats_first_unread_message ON Chats (first_unread_message);
    # CREATE INDEX IX_Chats_is_bookmarked ON Chats (is_bookmarked);
    # CREATE INDEX IX_Chats_lifesigns ON Chats (lifesigns);
    # CREATE INDEX IX_Chats_mystatus ON Chats (mystatus);
    # CREATE INDEX IX_Chats_name ON Chats (name);
    # CREATE INDEX IX_Chats_participants ON Chats (participants);
    # CREATE INDEX IX_Chats_type ON Chats (type);
  end                                                                
end
