class UserEmailError < StandardError
  def message
    I18n.t('errors.users.email')
  end
end