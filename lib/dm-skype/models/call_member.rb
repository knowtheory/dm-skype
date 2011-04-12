module Skype
  class CallMember # CREATE TABLE CallMembers (
    include DataMapper::Resource
    property :id,                           Serial  # id, Serial
    property :is_permanent,                 Integer # is_permanent, Integer
    property :identity,                     Text    # identity, Text
    property :dispname,                     Text    # dispname, Text
    property :languages,                    Text    # languages, Text
    property :call_duration,                Integer # call_duration, Integer
    property :price_per_minute,             Integer # price_per_minute, Integer
    property :price_precision,              Integer # price_precision, Integer
    property :price_currency,               Text    # price_currency, Text
    property :payment_category,             Text    # payment_category, Text
    property :type,                         Integer # type, Integer
    property :status,                       Integer # status, Integer
    property :failurereason,                Integer # failurereason, Integer
    property :sounderror_code,              Integer # sounderror_code, Integer
    property :soundlevel,                   Integer # soundlevel, Integer
    property :pstn_statustext,              Text    # pstn_statustext, Text
    property :pstn_feedback,                Text    # pstn_feedback, Text
    property :forward_targets,              Text    # forward_targets, Text
    property :forwarded_by,                 Text    # forwarded_by, Text
    property :debuginfo,                    Text    # debuginfo, Text
    property :videostatus,                  Integer # videostatus, Integer
    property :target_identity,              Text    # target_identity, Text
    property :mike_status,                  Integer # mike_status, Integer
    property :is_read_only,                 Integer # is_read_only, Integer
    property :quality_status,               Integer # quality_status, Integer
    property :call_name,                    Text    # call_name, Text
    property :transfer_status,              Integer # transfer_status, Integer
    property :transfer_active,              Integer # transfer_active, Integer
    property :transferred_by,               Text    # transferred_by, Text
    property :transferred_to,               Text    # transferred_to, Text
    property :guid,                         Text    # guid, Text
    property :next_redial_time,             Integer # next_redial_time, Integer
    property :nrof_redials_done,            Integer # nrof_redials_done, Integer
    property :nrof_redials_left,            Integer # nrof_redials_left, Integer
    property :transfer_topic,               Text    # transfer_topic, Text
    property :real_identity,                Text    # real_identity, Text
    property :start_timestamp,              Integer # start_timestamp, Integer
    property :is_conference,                Integer # is_conference, Integer
    property :quality_problems,             Text    # quality_problems, Text
    property :identity_type,                Integer # identity_type, Integer
    property :country,                      Text    # country, Text
    property :creation_timestamp,           Integer # creation_timestamp, Integer
    property :stats_xml,                    Text    # stats_xml, Text
    property :is_premium_video_sponsor,     Integer # is_premium_video_sponsor, Integer
    property :is_multiparty_video_capable,  Integer # is_multiparty_video_capable, Integer
    property :recovery_in_progress,         Integer # recovery_in_progress, Integer
    property :pk_status,                    Integer # pk_status, Integer
    property :call_db_id,                   Integer # call_db_id, Integer
    property :prime_status,                 Integer # prime_status, Integer
    property :nonse_word,                   Text    # nonse_word TEXT);

    # CREATE INDEX IX_CallMembers_call_name ON CallMembers (call_name);
    # CREATE INDEX IX_CallMembers_identity ON CallMembers (identity);
    belongs_to :contact, :child_key => [:identity], :parent_key => [:skypename]
  end
end
