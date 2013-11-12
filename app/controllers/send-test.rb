require 'mandrill'  
m = Mandrill::API.new
message = {  
 :subject=> "Hello from the Mandrill API",  
 :from_name=> "Your name",  
 :text=>"Hi message, how are you?",  
 :to=>[  
   {  
     :email=> "lookitup4me@gmail.com",  
     :name=> "Recipient1"  
   }  
 ],  
 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
 :from_email=>"lookitup4me@gmail.com"  
}  
sending = m.messages.send message  
puts 'X'
puts sending