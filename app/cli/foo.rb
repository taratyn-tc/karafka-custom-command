
module Karafka

  class Cli < Thor

    class Foo < Base
      desc "This is the example command"

      def call
        puts Karafka::App.consumer_groups.map(&:topics).flatten.sort_by(&:name).map{ |t| t.name }
      end
    end
  end
end

Foo = Karafka::Cli::Foo