while true do 
  File.open("log/test.log", mode = "w"){|f|
    f.write("logger2\n") 
    sleep 1
  }
end
