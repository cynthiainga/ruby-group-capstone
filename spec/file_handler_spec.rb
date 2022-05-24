require_relative '../classes/file_handler'
require 'json'
# data folder must be added to root for test to succeed

describe FileHandler do
  before(:example) do
    @file_name = 'new_handler'
    file_location = "#{Dir.pwd}/data/#{@file_name}.json"
    p file_location
    File.delete(file_location) if File.exist?(file_location)
    @instance = FileHandler.new(@file_name)
  end

  it 'should create new instance with empty list' do
    expect(@instance.read).to eq([])
  end

  it 'should write and read the data' do
    sample_data = [{ hello: 'hello', how_are: 'how_are' }]
    @instance.write(sample_data)
    expect(@instance.read).to eq(JSON.parse(JSON.generate(sample_data)))
  end
end
