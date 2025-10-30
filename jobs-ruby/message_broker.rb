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
# Hash 2383
# Hash 1601
# Hash 9103
# Hash 8693
# Hash 2657
# Hash 8717
# Hash 1317
# Hash 1048
# Hash 2971
# Hash 9042
# Hash 2168
# Hash 7636
# Hash 2179
# Hash 6854
# Hash 6477
# Hash 2466
# Hash 3811
# Hash 4313
# Hash 5188
# Hash 7607
# Hash 8005
# Hash 6056
# Hash 1821
# Hash 9017
# Hash 7115
# Hash 3270
# Hash 1621
# Hash 9788
# Hash 3723
# Hash 4730
# Hash 1061
# Hash 2043
# Hash 9413
# Hash 5147
# Hash 1442
# Hash 9252
# Hash 1841
# Hash 6981
# Hash 5213
# Hash 5032
# Hash 8551
# Hash 1280
# Hash 3548
# Hash 6035
# Hash 3195
# Hash 5489
# Hash 8454
# Hash 2999
# Hash 4184
# Hash 7712
# Hash 1086
# Hash 6564
# Hash 8200
# Hash 2593
# Hash 7660
# Hash 2318
# Hash 3802
# Hash 6104
# Hash 8054
# Hash 5547
# Hash 9016
# Hash 7730
# Hash 4612
# Hash 7568
# Hash 7810
# Hash 5080
# Hash 5642
# Hash 2600
# Hash 8717
# Hash 4357
# Hash 7469
# Hash 9192
# Hash 1176
# Hash 1477
# Hash 2826
# Hash 4615
# Hash 1840
# Hash 5636
# Hash 6684
# Hash 3537
# Hash 8241
# Hash 6322
# Hash 8926
# Hash 1172
# Hash 2915
# Hash 4912
# Hash 1608
# Hash 5063
# Hash 8761
# Hash 5493
# Hash 5470
# Hash 7620
# Hash 2913
# Hash 2260
# Hash 3593
# Hash 6644
# Hash 9774
# Hash 3459
# Hash 2016
# Hash 9788
# Hash 8347
# Hash 8541
# Hash 1084
# Hash 6358
# Hash 2459
# Hash 8626
# Hash 2031
# Hash 1992
# Hash 6799
# Hash 7490
# Hash 4390