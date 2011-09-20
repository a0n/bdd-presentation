AfterStep do
  if ENV["STEPPY"]
    print "Press return to continue with next step"
    STDIN.getc
  end
end
