# frozen_string_literal: true

RSpec.describe FauxSortedSet do
  it "has a version number" do
    expect(FauxSortedSet::VERSION).not_to be_nil
  end

  it "avoids errors when referencing SortedSet" do
    require "set"
    SortedSet
  end
end
