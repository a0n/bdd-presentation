When /^I press the plus button$/ do
  touch( "toolbarButton marked:'Add'")
end

Then /^I should see (\d+) rows in section (\d+)$/ do |expected_num_rows, section|  
  section = section.to_i
  expected_num_rows = expected_num_rows.to_i
  num_rows_array = frankly_map( "tableView first", "numberOfRowsInSection:", section ) 
  raise "no table found" if num_rows_array.empty?
  num_rows_array.first.should eq(expected_num_rows)
end
