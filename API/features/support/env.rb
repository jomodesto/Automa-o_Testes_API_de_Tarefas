require 'faker'
require 'factory_bot'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require "json_matchers/rspec"

require_relative 'spec_helper/spec_rest'

JsonMatchers.schema_root = "./features/Contracts/"

AMBIENTE = ENV['AMBIENTE']

World(REST)

World(REST,FactoryBot::Syntax::Methods)


CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")