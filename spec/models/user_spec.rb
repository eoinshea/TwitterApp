describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }
  it { should validate_presence_of(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it 'should be associated with many hastags or accounts'

  it 'should have a username'

  it ''

end
