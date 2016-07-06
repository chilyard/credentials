

module RLCredentials

	def loadbalancer(*args)
	  print "you passed: ", args[0], "\n"
	  print "loading netscaler api credentials\n"
	  creds_file = File.open('/Users/chuck.hilyard/projects/rl_credentials/lib/netscaler_apicreds.json', "rb")
	  content = creds_file.read
	  creds_hash = JSON.parse(content)
	  username = creds_hash['login']['username']
	  password = creds_hash['login']['password']
      return username, password
	end

end
