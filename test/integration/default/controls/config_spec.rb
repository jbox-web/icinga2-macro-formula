control 'Icinga configuration' do
  title 'should match desired lines'

  current_path = File.dirname(__FILE__)
  expected_config_path = "#{current_path}/icinga2.conf"

  describe file('/tmp/icinga2.conf') do
    # Default config
    its('content') { should eq File.read(expected_config_path) }
  end
end
