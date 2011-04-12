module Skype
  class Alert # CREATE TABLE Alerts (
    include DataMapper::Resource

    property :id,                     Serial  # id, Serial
    property :is_permanent,           Integer # is_permanent, Integer
    property :timestamp,              Integer # timestamp, Integer
    property :partner_name,           Text    # partner_name, Text
    property :is_unseen,              Integer # is_unseen, Integer
    property :partner_id,             Integer # partner_id, Integer
    property :partner_event,          Text    # partner_event, Text
    property :partner_history,        Text    # partner_history, Text
    property :partner_header,         Text    # partner_header, Text
    property :partner_logo,           Text    # partner_logo, Text
    property :meta_expiry,            Integer # meta_expiry, Integer
    property :message_header_caption, Text    # message_header_caption, Text
    property :message_header_title,   Text    # message_header_title, Text
    property :message_header_subject, Text    # message_header_subject, Text
    property :message_header_cancel,  Text    # message_header_cancel, Text
    property :message_header_later,   Text    # message_header_later, Text
    property :message_content,        Text    # message_content, Text
    property :message_footer,         Text    # message_footer, Text
    property :message_button_caption, Text    # message_button_caption, Text
    property :message_button_uri,     Text    # message_button_uri, Text
    property :message_type,           Integer # message_type, Integer
    property :window_size,            Integer # window_size, Integer
    property :chatmsg_guid,           Binary  # chatmsg_guid BLOB,
    property :notification_id,        Integer # notification_id, Integer
    property :event_flags,            Integer # event_flags INTEGER);

    # CREATE INDEX IX_Alerts_chatmsg_guid ON Alerts (chatmsg_guid);
    # CREATE INDEX IX_Alerts_notification_id ON Alerts (notification_id);
    # CREATE INDEX IX_Alerts_timestamp ON Alerts (timestamp);
  end
end