desc 'Pings site url to keep dyno alive'

task :ping do
  require 'net/http'

  uri = URI('http://www.people-of-bart.com')
  Net::HTTP.get_response(uri)
end
