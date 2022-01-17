class Database
	DATABASE = {
		'index.html' => '<html>This is my index</html>'
	}

	def self.get(key)
		sleep 3
		DATABASE[key]
	end
end
