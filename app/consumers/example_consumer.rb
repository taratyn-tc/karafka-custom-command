class ExampleConsumer < ApplicationConsumer

  def initialize(foo)
    puts "1️⃣in initialize"
    puts self.methods - Object.methods
    super
  end

  def consume
    # Print all the payloads one after another
    params_batch.each do |message|
      puts message.payload
    end
  end

end