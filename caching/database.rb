# frozen_string_literal: true

class Database
  DATABASE = {
    'index.html' => '<html>This is my index</html>'
  }.freeze

  def self.get(key)
    sleep 3
    DATABASE[key]
  end
end
