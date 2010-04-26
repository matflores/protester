class Redis
  class Pipeline < Client
    BUFFER_SIZE = 50_000

    def initialize(redis)
      @redis = redis
      @commands = []
    end

    def call_command(command)
      @commands << command
    end

    def execute
      return if @commands.empty?
      @redis.call_command(@commands)
    end
  end
end
