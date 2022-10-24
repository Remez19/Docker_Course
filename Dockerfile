FROM node:14-alpine

WORKDIR /app

# With this we can make sure that every commmand we run 
# when using utility containers will be appended to "npm".
# So now what ever comes after the image name (in the run command)
# will be apended to npm therefore if we type 
# "install" -> "npm install".
ENTRYPOINT [ "npm" ]

# docker build -t node-util .