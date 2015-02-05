require 'spec_helper'

describe Genus do
  it { should belong_to :angiosperm }
  it { should belong_to :family}
  it { should have_many :species}
end
