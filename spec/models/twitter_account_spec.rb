require 'rails_helper'

RSpec.describe TwitterAccount, type: :model do

  it { should have_many(:tweets) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:profiepic) }



end
