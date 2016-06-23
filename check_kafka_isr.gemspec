# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'check_kafka_isr/version'

Gem::Specification.new do |spec|
  spec.name          = "check_kafka_isr"
  spec.version       = CheckKafkaIsr::VERSION
  spec.authors       = ["Travis Foster"]
  spec.email         = ["tfoster@opentable.com"]

  spec.summary       = 'Sensu check for Kafka ISR'
  spec.description   = 'Sensu check that will alert if the number of in-sync-replicas is less than the configured number of replicas'
  spec.homepage      = 'https://github.com/travees/check_kafka_isr'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = 'check-kafka-isr'
  spec.require_paths = ["lib"]

  spec.add_dependency 'sensu-plugin', '~> 0'
  spec.add_dependency 'kazoo-ruby', '~> 0'
end
