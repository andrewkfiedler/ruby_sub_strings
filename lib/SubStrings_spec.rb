# frozen_string_literal: true

require_relative './SubStrings'

RSpec.describe 'sub the strings' do
  it 'given example' do
    expect(SubStrings.analyze('below', ['low', 'below'])).to eql({
      low: 1,
      below: 1
      })
  end
  it 'single letters' do
    expect(SubStrings.analyze('aaaaav', ['a', 'v'])).to eql({
      a: 5,
      v: 1
      })
  end
  it 'single letters case insensitive' do
    expect(SubStrings.analyze('aAaaav', ['A', 'v'])).to eql({
      a: 5,
      v: 1
      })
  end
  it 'complex (dups)' do
    expect(SubStrings.analyze('bearbearcitycitytoocancitybear', ['bear', 'city', 'notseen', 'bear'])).to eql({
      city: 3,
      bear: 3,
      notseen: 0
      })
  end
end
