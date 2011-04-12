module Skype
  class Conversation                                         # CREATE TABLE "Conversations" (
    include DataMapper::Resource
  
    property :id,                                    Serial # id INTEGER NOT NULL PRIMARY KEY,
    property :is_permanent,                          Integer # is_permanent, Integer
    property :identity,                              Text    # identity, Text
    property :type,                                  Integer # type, Integer
    property :live_host,                             Text    # live_host, Text
    property :live_start_timestamp,                  Integer # live_start_timestamp, Integer
    property :live_is_muted,                         Integer # live_is_muted, Integer
    property :alert_string,                          Text    # alert_string, Text
    property :is_bookmarked,                         Integer # is_bookmarked, Integer
    property :given_displayname,                     Text    # given_displayname, Text
    property :displayname,                           Text    # displayname, Text
    property :local_livestatus,                      Integer # local_livestatus, Integer
    property :inbox_timestamp,                       Integer # inbox_timestamp, Integer
    property :inbox_message_id,                      Integer # inbox_message_id, Integer
    property :unconsumed_suppressed_messages,        Integer # unconsumed_suppressed_messages, Integer
    property :unconsumed_normal_messages,            Integer # unconsumed_normal_messages, Integer
    property :unconsumed_elevated_messages,          Integer # unconsumed_elevated_messages, Integer
    property :unconsumed_messages_voice,             Integer # unconsumed_messages_voice, Integer
    property :active_vm_id,                          Integer # active_vm_id, Integer
    property :context_horizon,                       Integer # context_horizon, Integer
    property :consumption_horizon,                   Integer # consumption_horizon, Integer
    property :last_activity_timestamp,               Integer # last_activity_timestamp, Integer
    property :active_invoice_message,                Integer # active_invoice_message, Integer
    property :spawned_from_convo_id,                 Integer # spawned_from_convo_id, Integer
    property :pinned_order,                          Integer # pinned_order, Integer
    property :creator,                               Text    # creator, Text
    property :creation_timestamp,                    Integer # creation_timestamp, Integer
    property :my_status,                             Integer # my_status, Integer
    property :opt_joining_enabled,                   Integer # opt_joining_enabled, Integer
    property :opt_access_token,                      Text    # opt_access_token, Text
    property :opt_entry_level_rank,                  Integer # opt_entry_level_rank, Integer
    property :opt_disclose_history,                  Integer # opt_disclose_history, Integer
    property :opt_history_limit_in_days,             Integer # opt_history_limit_in_days, Integer
    property :opt_admin_only_activities,             Integer # opt_admin_only_activities, Integer
    property :passwordhint,                          Text    # passwordhint, Text
    property :meta_name,                             Text    # meta_name, Text
    property :meta_topic,                            Text    # meta_topic, Text
    property :meta_guidelines,                       Text    # meta_guidelines, Text
    #property :meta_picture BLOB,                            # meta_picture BLOB,
    property :premium_video_status,                  Integer # premium_video_status, Integer
    property :premium_video_is_grace_period,         Integer # premium_video_is_grace_period, Integer
    property :guid,                                  Text    # guid, Text
    property :dialog_partner,                        Text    # dialog_partner, Text
    property :meta_description,                      Text    # meta_description, Text
    property :premium_video_sponsor_list,            Text    # premium_video_sponsor_list, Text
    property :chat_dbid,                             Integer # chat_dbid, Integer
    property :history_horizon,                       Integer # history_horizon, Integer
    property :extprop_hide_from_history,             Integer # extprop_hide_from_history, Integer
    property :extprop_aux_type,                      Integer # extprop_aux_type, Integer
    property :extprop_sort_other,                    Integer # extprop_sort_other, Integer
    property :extprop_dialog_contact_is_bookmarked,  Integer # extprop_dialog_contact_is_bookmarked, Integer
    property :extprop_current_sms_dbid,              Integer # extprop_current_sms_dbid, Integer
    property :extprop_mark_read_immediately,         Integer # extprop_mark_read_immediately, Integer
    property :extprop_chat_mode,                     Integer # extprop_chat_mode Integer);

    # CREATE INDEX IX_Conversations_identity ON Conversations (identity);
    # CREATE INDEX IX_Conversations_type ON Conversations (type);
  end
end
