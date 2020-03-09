# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  it 'random' do
    expect(subject).to respond_to(:name)
  end
end
