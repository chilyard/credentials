

module RLCredentials

	def loadbalancer(*args)
	  print "you passed: ", args[0], "\n"
      print "loading netscaler api credentials\n"
      creds_file = File.open('/home/chilyard/projects/rl_credentials/netscaler_apicreds.json', "rb")
      content = creds_file.read
      creds_hash = JSON.parse(content)
      print "username: ", creds_hash['login']['username'], "\n"
      print "password: ", creds_hash['login']['password'], "\n"
	end

end
