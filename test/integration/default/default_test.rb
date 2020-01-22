# InSpec test for recipe python_cookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end

describe package 'python-pip' do
  it { should be_installed }
end

describe package 'python3.8' do
  it {should be_installed }
  its('version') { should cmp > '3.8*' }
end

# describe command 'pip install bs4' do
#   it { should be_installed }
# end
#
# describe command 'pip install requests' do
#   it { should be_installed }
# end
#
# describe command 'pip install pytest' do
#   it { should be_installed }
# end
#
# describe command 'pip install configmanager' do
#   it { should be_installed }
# end
