When /^I accept the general terms and conditions$/ do
  find_checkbox("plan_agb_checked").set
end

When /^I accept the data privacy agreement$/ do
  find_checkbox("plan_data_checked").set
end
