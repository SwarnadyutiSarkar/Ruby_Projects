class PasswordManager
  def initialize
    @passwords = {}
  end

  def add_password(account, username, password)
    @passwords[account] = { username: username, password: password }
    puts "Password for #{account} has been added to the manager."
  end

  def view_password(account)
    if @passwords.key?(account)
      puts "Account: #{account}"
      puts "Username: #{@passwords[account][:username]}"
      puts "Password: #{@passwords[account][:password]}"
    else
      puts "Password for #{account} not found in the manager."
    end
  end
end

# Example usage
password_manager = PasswordManager.new

password_manager.add_password("Email", "example@example.com", "password123")
password_manager.add_password("Bank Account", "user123", "securepassword")

password_manager.view_password("Email")
password_manager.view_password("Bank Account")
password_manager.view_password("Social Media")
