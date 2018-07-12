require './controllers/session_controller'
require './models/employee.rb'

def login
  if SessionController.login
    p 'Login success'
    screen2
  else
    p 'Invalid username or password!!!'
  end
end

def register
  SessionController.register
end

def forgot_pass
  SessionController.forgot_password
end

def screen1
  loop do
    p '============ Human resource ============='
    p '1. Login'
    p '2. Register'
    p '3. Forgot Password'
    p 'Choose number:'
    x = gets.chomp.to_i
    case x
    when 1
      login
    when 2
      register
    when 3
      forgot_pass
    else
      p '=====>Notice! :Choose number 1-> 3'
      break if x.zero? 0
    end
  end
end

def screen2
  loop do
    p '============ Human resource management============='
    p '1. Team management'
    p '2. Leave management'
    p '3. Notification management'
    p '4. Logout'
    p '5. Shutdown program'
    p '6.CSV'
    p 'Choose number:'
    x = gets.chomp.to_i
    case x
    when 1
      p 'Team management'
    when 2
      p 2
    when 3
      p 3
    when 5
      p 4
    when 6
      p 6
    else
      p '=====>Notice! :Choose number 1-> 6'
      break if x == 4
    end
  end
end

# Screen level 1
screen1
