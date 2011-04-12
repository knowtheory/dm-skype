module Skype
  class Voicemail # CREATE TABLE Voicemails (
    include DataMapper::Resource
    
    property :id, Serial # id, Serial
    # is_permanent, Integer
    # type, Integer
    # partner_handle, Text
    # partner_dispname, Text
    # status, Integer
    # failurereason, Integer
    # subject, Text
    # timestamp, Integer
    # duration, Integer
    # allowed_duration, Integer
    # playback_progress, Integer
    # convo_id, Integer
    # chatmsg_guid BLOB,
    # notification_id, Integer
    # flags, Integer
    # size, Integer
    # path, Text
    # failures, Integer
    # vflags, Integer
    # xmsg TEXT);
    # CREATE INDEX IX_Voicemails_chatmsg_guid ON Voicemails (chatmsg_guid);
    # CREATE INDEX IX_Voicemails_flags ON Voicemails (flags);
    # CREATE INDEX IX_Voicemails_notification_id ON Voicemails (notification_id);
    # CREATE INDEX IX_Voicemails_partner_handle ON Voicemails (partner_handle);
    # CREATE INDEX IX_Voicemails_status ON Voicemails (status);
    # CREATE INDEX IX_Voicemails_type ON Voicemails (type);
  end
end
