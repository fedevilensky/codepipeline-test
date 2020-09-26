module Business
  module Organizations
    def self.create!(name, username, email, password)
      raise OrganizationNameError if Organization.exists?(name: name)

      raise UserEmailError if User.exists?(email: email)

      organization = Organization.create(name: name)

      User.create(
        name: username, email: email, password: password, organization_id: organization.id
      )
    end
  end
end