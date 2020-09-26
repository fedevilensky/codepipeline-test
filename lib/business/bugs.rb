module Business
  module Bugs
    def self.all
      Bug.all
    end

    def self.find!(bug_id)
      Bug.find_by!(id: bug_id)
    end

    def self.create(title, description, severity, state)
      Bug.create(title: title, description: description, severity: severity, state: state)
    end
  end
end
