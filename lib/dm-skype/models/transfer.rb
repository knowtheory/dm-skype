module Skype
  class Transfer # CREATE TABLE Transfers (
    include DataMapper::Resource
  
    property :id,               Serial  # id, Serial
    property :is_permanent,     Integer # is_permanent, Integer
    property :type,             Integer # type, Integer
    property :partner_handle,   Text    # partner_handle, Text
    property :partner_dispname, Text    # partner_dispname, Text
    property :status,           Integer # status, Integer
    property :failurereason,    Integer # failurereason, Integer
    property :starttime,        Integer # starttime, Integer
    property :finishtime,       Integer # finishtime, Integer
    property :filepath,         Text    # filepath, Text
    property :filename,         Text    # filename, Text
    property :filesize,         Text    # filesize, Text
    property :bytestransferred, Text    # bytestransferred, Text
    property :bytespersecond,   Integer # bytespersecond, Integer
    #property :chatmsg_guid BLOB,            #     chatmsg_guid BLOB,
    property :chatmsg_index,    Integer # chatmsg_index, Integer
    property :convo_id,         Integer # convo_id, Integer
    property :pk_id,            Integer # pk_id, Integer
    #property :nodeid BLOB,                  #     nodeid BLOB,
    property :last_activity,    Integer # last_activity, Integer
    property :flags,            Integer # flags, Integer
    property :old_status,       Integer # old_status, Integer
    property :old_filepath,     Integer # old_filepath, Integer
    property :accepttime,       Integer # accepttime, Integer
    #property :extprop_transfer_alias BLOB); #     extprop_transfer_alias BLOB);

    # CREATE INDEX IX_Transfers_chatmsg_guid ON Transfers (chatmsg_guid);
    # CREATE INDEX IX_Transfers_partner_handle ON Transfers (partner_handle);
    # CREATE INDEX IX_Transfers_status ON Transfers (status);
    # CREATE INDEX IX_Transfers_type ON Transfers (type);
  end
end