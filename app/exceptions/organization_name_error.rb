class OrganizationNameError < StandardError
  def message
    I18n.t('errors.organizations.name')
  end
end