

class RLCredentials

	def intialize
	  puts "RLCredentials init"
	end


	def LoadBalancer
      print "loading credentials\n"
      creds_file = File.open('apicreds.json', "rb")
      content = creds_file.read
      creds_hash = JSON.parse(content)
      print "username: ", creds_hash['login']['username'], "\n"
      print "password: ", creds_hash['login']['password'], "\n"
	end

end
