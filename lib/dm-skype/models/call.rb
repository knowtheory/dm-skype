module Skype
  class Call # CREATE TABLE Calls (
    include DataMapper::Resource
    property :id,                             Serial  # id, Serial
    property :is_permanent,                   Integer # is_permanent, Integer
    property :begin_timestamp,                Integer # begin_timestamp, Integer
    property :topic,                          Text    # topic, Text
    property :is_muted,                       Integer # is_muted, Integer
    property :is_unseen_missed,               Integer # is_unseen_missed, Integer
    property :host_identity,                  Text    # host_identity, Text
    property :mike_status,                    Integer # mike_status, Integer
    property :duration,                       Integer # duration, Integer
    property :soundlevel,                     Integer # soundlevel, Integer
    property :access_token,                   Text    # access_token, Text
    property :active_members,                 Integer # active_members, Integer
    property :is_active,                      Integer # is_active, Integer
    property :name,                           Text    # name, Text
    property :video_disabled,                 Integer # video_disabled, Integer
    property :joined_existing,                Integer # joined_existing, Integer
    property :server_identity,                Text    # server_identity, Text
    property :vaa_input_status,               Integer # vaa_input_status, Integer
    property :is_incoming,                    Integer # is_incoming, Integer
    property :is_conference,                  Integer # is_conference, Integer
    property :is_on_hold,                     Integer # is_on_hold, Integer
    property :start_timestamp,                Integer # start_timestamp, Integer
    property :quality_problems,               Text    # quality_problems, Text
    property :current_video_audience,         Text    # current_video_audience, Text
    property :premium_video_status,           Integer # premium_video_status, Integer
    property :premium_video_is_grace_period,  Integer # premium_video_is_grace_period, Integer
    property :is_premium_video_sponsor,       Integer # is_premium_video_sponsor, Integer
    property :premium_video_sponsor_list,     Text    # premium_video_sponsor_list, Text
    #property :old_members BLOB,                      # old_members BLOB,
    property :partner_handle,                 Text    # partner_handle, Text
    property :partner_dispname,               Text    # partner_dispname, Text
    property :type,                           Integer # type, Integer
    property :status,                         Integer # status, Integer
    property :failurereason,                  Integer # failurereason, Integer
    property :failurecode,                    Integer # failurecode, Integer
    property :pstn_number,                    Text    # pstn_number, Text
    property :old_duration,                   Integer # old_duration, Integer
    #property :conf_participants BLOB,                # conf_participants BLOB,
    property :pstn_status,                    Text    # pstn_status, Text
    #property :members BLOB,                          # members BLOB,
    property :conv_dbid,                      Integer # conv_dbid INTEGER);

    # CREATE INDEX IX_Calls_begin_timestamp ON Calls (begin_timestamp);
    # CREATE INDEX IX_Calls_is_unseen_missed ON Calls (is_unseen_missed);
    # CREATE INDEX IX_Calls_name ON Calls (name);
  end
end