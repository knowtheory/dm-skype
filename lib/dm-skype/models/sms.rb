module Skype
  class SMS  # CREATE TABLE SMSes (
    include DataMapper::Resource
    
    property :id, Serial# id, Serial
    # is_permanent, Integer
    # type, Integer
    # status, Integer
    # failurereason, Integer
    # is_failed_unseen, Integer
    # timestamp, Integer
    # price, Integer
    # price_precision, Integer
    # price_currency, Text
    # reply_to_number, Text
    # target_numbers, Text
    # target_statuses BLOB,
    # body, Text
    # chatmsg_id, Integer
    # extprop_sms_guid BLOB,
    # extprop_sms_rendered_body, Text
    # extprop_sms_render_version, Integer
    # extprop_sms_aux_type, Integer
    # extprop_sms_aux_timestamp, Integer
    # extprop_sms_aux_status INTEGER);
    # CREATE INDEX IX_SMSes_status ON SMSes (status);
    # CREATE INDEX IX_SMSes_target_numbers ON SMSes (target_numbers);
    # CREATE INDEX IX_SMSes_type ON SMSes (type);
  
  end
end