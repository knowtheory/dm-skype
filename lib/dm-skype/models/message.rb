module Skype
  class Message                                           # CREATE TABLE Messages (
    include DataMapper::Resource                          
                                                        
    property :id,                                 Serial # id INTEGER NOT NULL PRIMARY KEY,
    property :is_permanent,                       Integer # is_permanent, Integer
    property :convo_id,                           Integer # convo_id, Integer
    property :chatname,                           Text    # chatname, Text
    property :author,                             Text    # author, Text
    property :from_dispname,                      Text    # from_dispname, Text
    property :author_was_live,                    Integer # author_was_live, Integer
    #property :guid BLOB,                                                   # guid BLOB,
    property :dialog_partner,                     Text    # dialog_partner, Text
    property :timestamp,                          Integer # timestamp, Integer
    property :type,                               Integer # type, Integer
    property :sending_status,                     Integer # sending_status, Integer
    property :consumption_status,                 Integer # consumption_status, Integer
    property :edited_by,                          Text    # edited_by, Text
    property :edited_timestamp,                   Integer # edited_timestamp, Integer
    property :param_key,                          Integer # param_key, Integer
    property :param_value,                        Integer # param_value, Integer
    property :body_xml,                           Text    # body_xml, Text
    property :identities,                         Text    # identities, Text
    property :reason,                             Text    # reason, Text
    property :leavereason,                        Integer # leavereason, Integer
    property :participant_count,                  Integer # participant_count, Integer
    property :error_code,                         Integer # error_code, Integer
    property :chatmsg_type,                       Integer # chatmsg_type, Integer
    property :chatmsg_status,                     Integer # chatmsg_status, Integer
    property :body_is_rawxml,                     Integer # body_is_rawxml, Integer
    property :oldoptions,                         Integer # oldoptions, Integer
    property :newoptions,                         Integer # newoptions, Integer
    property :newrole,                            Integer # newrole, Integer
    property :pk_id,                              Integer # pk_id, Integer
    property :crc,                                Integer # crc, Integer
    property :remote_id,                          Integer # remote_id, Integer
    property :call_guid,                          Text    # call_guid, Text
    property :extprop_chatmsg_ft_index_timestamp, Integer # extprop_chatmsg_ft_index_timestamp, Integer
    property :extprop_chatmsg_is_pending,         Integer # extprop_chatmsg_is_pending, Integer
    property :extprop_chatmsg_rendered_body,      Text    # extprop_chatmsg_rendered_body, Text
    property :extprop_chatmsg_render_version,     Integer # extprop_chatmsg_render_version, Integer
    property :extprop_chatmsg_aux_type,           Integer # extprop_chatmsg_aux_type, Integer
    property :extprop_chatmsg_aux_from_handle,    Text    # extprop_chatmsg_aux_from_handle TEXT);

    # CREATE INDEX IX_Messages_call_guid ON Messages (call_guid);
    # CREATE INDEX IX_Messages_chatname_timestamp_consumption_status_sending_status ON Messages (chatname,
    #     timestamp,
    #     consumption_status,
    #     sending_status);
    # CREATE INDEX IX_Messages_convo_id_timestamp_consumption_status_sending_status ON Messages (convo_id,
    #     timestamp,
    #     consumption_status,
    #     sending_status);
    # CREATE INDEX IX_Messages_remote_id ON Messages (remote_id);
    # CREATE INDEX IX_Messages_timestamp_chatname ON Messages (timestamp,
    #     chatname);
    # CREATE INDEX IX_Messages_timestamp_convo_id_type ON Messages (timestamp,
    #     convo_id,
    #     type);
  end
end
