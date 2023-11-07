class MailserverController < ApplicationController

  def smtp_server
    require 'net/smtp'

    smtp_server = '142.93.255.5'
    smtp_port = 587 # Use the correct SMTP port, usually 587 or 25
    smtp_domain = 'Web3Crafter.com'
    smtp_username = 'sanyaminitcoders@gmail.com'
    smtp_password = 'pqrx ydxa nowr cymo' # Replace with your actual SMTP password
    authentication = :login

    # Email details
    from_email = 'sanyaminitcoders@gmail.com'
    to_email = 'sanyamjain18999@gmail.com'
    subject = 'Hello from Ruby SMTP'
    message_body = 'This is a test email sent from Ruby.'

    # Compose the email
    message = <<END_OF_MESSAGE
    From: #{from_email}
    To: #{to_email}
    Subject: #{subject}

    #{message_body}
END_OF_MESSAGE

    begin
      smtp = Net::SMTP.new(smtp_server, smtp_port)
      smtp.enable_starttls
      smtp.start(smtp_domain, smtp_username, smtp_password, authentication) do
        smtp.send_message(message, from_email, to_email)
      end
      puts 'Email sent successfully.'
      # redirect_to root_path
    rescue StandardError => e
      puts "Error sending email: #{e.message}"
      flash[:alert] = "Error sending email: #{e.message}"

      # render json: smtp_server
      # return
    end
  end
end
