require 'spec_helper'

describe WillAnnounce do

  it 'should return correct version string' do
    expect(WillAnnounce.version_string).to match "WillAnnounce version #{WillAnnounce::VERSION}"
  end

  # subject { WillAnnounce.new }
  #
  # describe '#process' do
  #   let(:input) { 'My grandmom gave me a sweater for Christmas.' }
  #   let(:output) { subject.process(input) }
  #
  #   it 'converts to lowercase' do
  #     expect(output.downcase).to eq output
  #   end
  #
  #   it 'combines nouns with doge adjectives' do
  #     expect(output).to match /so grandmom./i
  #     expect(output).to match /such sweater./i
  #     expect(output).to match /very christmas./i
  #   end
  #
  #   it 'always appends "wow."' do
  #     expect(output).to end_with 'wow.'
  #   end
  # end

end