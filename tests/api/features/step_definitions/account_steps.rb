require "lib/client.rb"


Given /^i am a valid user$/ do
  @client = Client.new( { :username => "rl@gobas.de" , :password => "test" })
end

Given /^i am an invalid user$/ do
  @client = Client.new( { :username => "rl@gobas.de" , :password => "failpass" })
end


Given /^i didnt enter any credentials$/ do
  @client = Client.new
end

When /^i call account\.json$/ do
  @response = @client.get_account_json
  @response.should_not be false
  @json = JSON.parse(@response.body)
  @json.should_not be false
end

Then /^the response body should contain an (.*) key$/ do |key|
  @json.should have_key(key)
end

Then /^the response body should not contain an (.*) key$/ do |key|
  @json.should_not have_key(key)
end

Then /^the response body should match (.*)$/ do |expr|
  @response.body should_match expr
end

Then /^the response code should be (\d+)$/ do |code|
  @response.code.should == code.to_i
end

