

module RLCredentials

	def intialize
	  puts "RLCredentials init"
	end


	def LoadBalancer
      print "loading netscaler api credentials\n"
      creds_file = File.open('netscaler_apicreds.json', "rb")
      content = creds_file.read
      creds_hash = JSON.parse(content)
      print "username: ", creds_hash['login']['username'], "\n"
      print "password: ", creds_hash['login']['password'], "\n"
	end

end
