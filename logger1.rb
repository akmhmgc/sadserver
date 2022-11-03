while true do 
  File.open("log/test.log", mode = "w"){|f|
    f.write("logger1\n") 
    sleep 1
  }
end
