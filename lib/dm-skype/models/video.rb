module Skype
  class Video  # CREATE TABLE Videos (
    include DataMapper::Resource

    property :id, Serial # id, Serial
    # is_permanent, Integer
    # status, Integer
    # error, Text
    # debuginfo, Text
    # dimensions, Text
    # media_type, Integer
    # duration_1080, Integer
    # duration_720, Integer
    # duration_hqv, Integer
    # duration_vgad2, Integer
    # duration_ltvgad2, Integer
    # timestamp, Integer
    # hq_present, Integer
    # duration_ss, Integer
    # ss_timestamp, Integer
    # convo_id, Integer
    # device_path TEXT);
  end
end
