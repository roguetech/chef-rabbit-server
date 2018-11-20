require 'spec_helper'

describe 'rxp-empty-cookbook::default' do
  context 'linux' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '7.0', step_into: 'rxp-empty-cookbook')
                          .converge(described_recipe)
    end

    it 'Runs recipe default' do
      expect(chef_run).to include_recipe('rxp-empty-cookbook::default')
    end
    it 'Creates /var/lib/foo' do
      expect(chef_run).to create_directory('/var/lib/foo')
    end
  end
end
