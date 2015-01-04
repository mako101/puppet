describe 'nginx::website' do
  let (:title) {'catz.com'}
  let (:params) { { :hour => '03' } }
    
  it { should contain_cron('Back up catz.com') }
  it {should have_file_resource_count(5) }
  
end