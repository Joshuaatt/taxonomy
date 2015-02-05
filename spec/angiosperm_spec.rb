require 'spec_helper'

describe Angiosperm do
  it { should have_many :families }
  it { should have_many :genera }
  it { should have_many :species}
end
