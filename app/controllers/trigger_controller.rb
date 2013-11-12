require 'mandrill'
class TriggerController < ApplicationController

  # helper_method :success_email

  def success_email
    m = Mandrill::API.new
    message = {  
      :subject=> "Hello from the Mandrill API",  
      :from_name=> "Your name",  
      :text=>"Hi message, how are you?",  
      :to=>[  
        {  
          :email=> "lookitup4me@gmail.com",  
          :name=> "Akhil"  
        }  
      ],
     :html=>"<html><h1>Hi Akhil</h1><br/><strong></strong>This is a success_email</html>",  
     :from_email=>"lookitup4me@gmail.com"  
    }  
    sending = m.messages.send message
    @status = sending[0]['status']
    @recepient = sending[0]['email']
  end

  def new_updates_email
    m = Mandrill::API.new
    message = {  
      :subject=> "Hello from the Mandrill API",  
      :from_name=> "Your name",  
      :text=>"Hi message, how are you?",  
      :to=>[  
        {  
          :email=> "lookitup4me@gmail.com",  
          :name=> "Akhil"  
        }  
      ],
     :html=>"<html><h1>Hi Akhil</h1><br/><strong></strong>This is a new_updates_email</html>",  
     :from_email=>"lookitup4me@gmail.com"  
    }  
    sending = m.messages.send message
    @status = sending[0]['status']
    @recepient = sending[0]['email']
  end


  def store_complete_email
    m = Mandrill::API.new
    message = {  
      :subject=> "Hello from the Mandrill API",  
      :from_name=> "Your name",  
      :text=>"Hi message, how are you?",  
      :to=>[  
        {  
          :email=> "lookitup4me@gmail.com",  
          :name=> "Akhil"  
        }  
      ],
     :html=>"<html><h1>Hi Akhil</h1><br/><strong></strong>This is a store_complete_email</html>",  
     :from_email=>"lookitup4me@gmail.com"  
    }  
    sending = m.messages.send message
    @status = sending[0]['status']
    @recepient = sending[0]['email']
  end

  def first_customer_email
    m = Mandrill::API.new
    message = {  
      :subject=> "Hello from the Mandrill API",  
      :from_name=> "Your name",  
      :text=>"Hi message, how are you?",  
      :to=>[  
        {  
          :email=> "lookitup4me@gmail.com",  
          :name=> "Akhil"  
        }  
      ],
     :html=>"<html><h1>Hi Akhil</h1><br/><strong></strong>This is a first_customer_email</html>",  
     :from_email=>"lookitup4me@gmail.com"  
    }  
    sending = m.messages.send message
    @status = sending[0]['status']
    @recepient = sending[0]['email']
  end

end
