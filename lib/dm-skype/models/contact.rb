module Skype
  class Contact                                             # CREATE TABLE Contacts (
    include DataMapper::Resource
  
    property :id,                                   Serial # id INTEGER NOT NULL PRIMARY KEY,
    property :is_permanent,                         Integer # is_permanent, Integer
    property :type,                                 Integer # type, Integer
    property :skypename,                            Text    # skypename, Text
    property :pstnnumber,                           Text    # pstnnumber, Text
    property :aliases,                              Text    # aliases, Text
    property :fullname,                             Text    # fullname, Text
    property :birthday,                             Integer # birthday, Integer
    property :gender,                               Integer # gender, Integer
    property :languages,                            Text    # languages, Text
    property :country,                              Text    # country, Text
    property :province,                             Text    # province, Text
    property :city,                                 Text    # city, Text
    property :phone_home,                           Text    # phone_home, Text
    property :phone_office,                         Text    # phone_office, Text
    property :phone_mobile,                         Text    # phone_mobile, Text
    property :emails,                               Text    # emails, Text
    property :homepage,                             Text    # homepage, Text
    property :about,                                Text    # about, Text
    property :avatar_image,                         Binary  # avatar_image BLOB,
    property :mood_text,                            Text    # mood_text, Text
    property :rich_mood_text,                       Text    # rich_mood_text, Text
    property :timezone,                             Integer # timezone, Integer
    property :capabilities,                         Binary  # capabilities BLOB,
    property :profile_timestamp,                    Integer # profile_timestamp, Integer
    property :nrof_authed_buddies,                  Integer # nrof_authed_buddies, Integer
    property :ipcountry,                            Text    # ipcountry, Text
    property :avatar_timestamp,                     Integer # avatar_timestamp, Integer
    property :mood_timestamp,                       Integer # mood_timestamp, Integer
    property :received_authrequest,                 Text    # received_authrequest, Text
    property :authreq_timestamp,                    Integer # authreq_timestamp, Integer
    property :lastonline_timestamp,                 Integer # lastonline_timestamp, Integer
    property :availability,                         Integer # availability, Integer
    property :displayname,                          Text    # displayname, Text
    property :refreshing,                           Integer # refreshing, Integer
    property :given_authlevel,                      Integer # given_authlevel, Integer
    property :given_displayname,                    Text    # given_displayname, Text
    property :assigned_speeddial,                   Text    # assigned_speeddial, Text
    property :assigned_comment,                     Text    # assigned_comment, Text
    property :alertstring,                          Text    # alertstring, Text
    property :lastused_timestamp,                   Integer # lastused_timestamp, Integer
    property :authrequest_count,                    Integer # authrequest_count, Integer
    property :assigned_phone1,                      Text    # assigned_phone1, Text
    property :assigned_phone1_label,                Text    # assigned_phone1_label, Text
    property :assigned_phone2,                      Text    # assigned_phone2, Text
    property :assigned_phone2_label,                Text    # assigned_phone2_label, Text
    property :assigned_phone3,                      Text    # assigned_phone3, Text
    property :assigned_phone3_label,                Text    # assigned_phone3_label, Text
    property :buddystatus,                          Integer # buddystatus, Integer
    property :isauthorized,                         Integer # isauthorized, Integer
    property :popularity_ord,                       Integer # popularity_ord, Integer
    property :isblocked,                            Integer # isblocked, Integer
    property :authorization_certificate,            Binary  # authorization_certificate BLOB,
    property :certificate_send_count,               Integer # certificate_send_count, Integer
    property :account_modification_serial_nr,       Integer # account_modification_serial_nr, Integer
    property :saved_directory_blob,                 Binary  # saved_directory_blob BLOB,
    property :nr_of_buddies,                        Integer # nr_of_buddies, Integer
    property :server_synced,                        Integer # server_synced, Integer
    property :contactlist_track,                    Integer # contactlist_track, Integer
    property :last_used_networktime,                Integer # last_used_networktime, Integer
    property :authorized_time,                      Integer # authorized_time, Integer
    property :sent_authrequest,                     Text    # sent_authrequest, Text
    property :sent_authrequest_time,                Integer # sent_authrequest_time, Integer
    property :sent_authrequest_serial,              Integer # sent_authrequest_serial, Integer
    property :buddyblob,                            Binary  # buddyblob BLOB,
    property :cbl_future,                           Binary  # cbl_future BLOB,
    property :node_capabilities,                    Integer # node_capabilities, Integer
    property :revoked_auth,                         Integer # revoked_auth, Integer
    property :added_in_shared_group,                Integer # added_in_shared_group, Integer
    property :in_shared_group,                      Integer # in_shared_group, Integer
    property :authreq_history,                      Binary # authreq_history BLOB,
    property :profile_attachments,                  Binary # profile_attachments BLOB,
    property :stack_version,                        Integer # stack_version, Integer
    property :offline_authreq_id,                   Integer # offline_authreq_id, Integer
    property :node_capabilities_and,                Integer # node_capabilities_and, Integer
    property :authreq_crc,                          Integer # authreq_crc, Integer
    property :authreq_src,                          Integer # authreq_src, Integer
    property :pop_score,                            Integer # pop_score, Integer
    property :authreq_nodeinfo,                     Binary  # authreq_nodeinfo BLOB,
    property :main_phone,                           Text    # main_phone, Text
    property :unified_servants,                     Text    # unified_servants, Text
    property :phone_home_normalized,                Text    # phone_home_normalized, Text
    property :phone_office_normalized,              Text    # phone_office_normalized, Text
    property :phone_mobile_normalized,              Text    # phone_mobile_normalized, Text
    property :sent_authrequest_initmethod,          Integer # sent_authrequest_initmethod, Integer
    property :authreq_initmethod,                   Integer # authreq_initmethod, Integer
    property :verified_email,                       Binary  # verified_email BLOB,
    property :verified_company,                     Binary  # verified_company BLOB,
    property :sent_authrequest_extrasbitmask,       Integer # sent_authrequest_extrasbitmask, Integer
    property :extprop_mark_read_immediately,        Integer # extprop_mark_read_immediately, Integer
    property :extprop_contact_mood_status,          Integer # extprop_contact_mood_status, Integer
    property :extprop_contact_ab_uuid,              Text    # extprop_contact_ab_uuid, Text
    property :extprop_contact_previous_mood_text,   Text    # extprop_contact_previous_mood_text, Text
    property :extprop_contact_latest_mood_msg_dbid, Text    # extprop_contact_latest_mood_msg_dbid, Text
    property :extprop_contact_is_bookmarked,        Integer # extprop_contact_is_bookmarked INTEGER);

    # CREATE INDEX IX_Contacts_buddystatus ON Contacts (buddystatus);
    # CREATE INDEX IX_Contacts_skypename ON Contacts (skypename);
    
    has n, :messages, :child_key => [:author], :parent_key => [:skypename]
    
    def avatar # images seem to start w/ an unnecessary null char.
      avatar_image.force_encoding("BINARY").sub(/^\x00/,'')
    end
  end
end
