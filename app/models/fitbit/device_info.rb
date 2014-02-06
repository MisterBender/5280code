module Fitbit
  class DeviceInfo
    attr_reader :last_sync_time,
                :battery_level,
                :device_type

    def initialize(args)
      @last_sync_time = Time.parse(args[0]['lastSyncTime'])
      @battery_level = args[0]['battery']
      @device_type = args[0]['deviceVersion']
    end
  end
end