# 0901265B11030E000C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
# 3568,1/3/14,17:27:38,1/3/14 17:27:38,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ChangeBasalProfile,"PATTERN_DATUM=12226881723, PROFILE_INDEX=0, RATE=0.3, START_TIME=0",12226881724,52912277,277,MiniMed 530G - 551

module MinimedRF
  module PumpEvents
    class ChangeBasalProfile < Base
      def self.event_type_code
        0x09
      end

      def length
        152
      end

      def to_s
        "ChangeBasalProfile #{timestamp_str}"
      end

      def timestamp
        parse_date(2)
      end

    end
  end
end