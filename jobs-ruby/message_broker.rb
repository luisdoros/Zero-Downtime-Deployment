module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Hash 8093
# Hash 7875
# Hash 2901
# Hash 1951
# Hash 2323
# Hash 7445
# Hash 8530
# Hash 6167
# Hash 1236
# Hash 6729
# Hash 4907
# Hash 1933
# Hash 8072
# Hash 9603
# Hash 9418
# Hash 9942
# Hash 4011
# Hash 5551
# Hash 8527
# Hash 9174
# Hash 7256
# Hash 8297
# Hash 3595
# Hash 8699
# Hash 5663
# Hash 3281
# Hash 4172
# Hash 2928
# Hash 1581
# Hash 5877
# Hash 9415
# Hash 5704
# Hash 9610
# Hash 1795
# Hash 1799
# Hash 3019
# Hash 8480
# Hash 6276
# Hash 4904
# Hash 5397
# Hash 3821
# Hash 5160
# Hash 3077
# Hash 3360
# Hash 2894
# Hash 7398
# Hash 3675
# Hash 7695
# Hash 7064
# Hash 9534
# Hash 6910
# Hash 7652
# Hash 9653
# Hash 5743
# Hash 3338
# Hash 6695
# Hash 9946