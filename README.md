# Docker Honeypot

I've just quickly thrown this docker image together to finally have a SSH Honeypot working out of the box.
The ones I have found so far were either complicated to set up or just not working. 

## Usage
Simply compile this docker image like you would with literally any other one.
Then run it with the argument -p 22:22 to bind it to the public SSH port. 
Do not forget to change the SSH port you use to connect to something different.

##Logging
The container will log all commands executed to a file stored in /var/log/commands.log.
All authentication attempts will be logged in /var/log/auth.log, as they normally would.
