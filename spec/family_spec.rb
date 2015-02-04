require 'spec_helper'

describe Family do
  it { should belong_to :angiosperm }
  # it { should have_many :genera }
  it { should have_many :species }
end
