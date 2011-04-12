module Skype
  class Participant                                     # CREATE TABLE "Participants" (
    include DataMapper::Resource
  
    property :id,                               Serial  # id, Serial
    property :is_permanent,                     Integer # is_permanent, Integer
    property :convo_id,                         Integer # convo_id, Integer
    property :identity,                         Text    # identity, Text
    property :rank,                             Integer # rank, Integer
    property :requested_rank,                   Integer # requested_rank, Integer
    property :text_status,                      Integer # text_status, Integer
    property :voice_status,                     Integer # voice_status, Integer
    property :video_status,                     Integer # video_status, Integer
    property :live_identity,                    Text    # live_identity, Text
    property :live_price_for_me,                Text    # live_price_for_me, Text
    property :live_fwd_identities,              Text    # live_fwd_identities, Text
    property :live_start_timestamp,             Integer # live_start_timestamp, Integer
    property :sound_level,                      Integer # sound_level, Integer
    property :debuginfo,                        Text    # debuginfo, Text
    property :next_redial_time,                 Integer # next_redial_time, Integer
    property :nrof_redials_left,                Integer # nrof_redials_left, Integer
    property :last_voice_error,                 Text    # last_voice_error, Text
    property :quality_problems,                 Text    # quality_problems, Text
    property :live_type,                        Integer # live_type, Integer
    property :live_country,                     Text    # live_country, Text
    property :transferred_by,                   Text    # transferred_by, Text
    property :transferred_to,                   Text    # transferred_to, Text
    property :adder,                            Text    # adder, Text
    property :is_premium_video_sponsor,         Integer # is_premium_video_sponsor, Integer
    property :is_multiparty_video_capable,      Integer # is_multiparty_video_capable, Integer
    property :live_identity_to_use,             Text    # live_identity_to_use, Text
    property :livesession_recovery_in_progress, Integer # livesession_recovery_in_progress INTEGER);

    # CREATE INDEX IX_Participants_convo_id ON Participants (convo_id);
    # CREATE INDEX IX_Participants_identity ON Participants (identity);
  end
end
