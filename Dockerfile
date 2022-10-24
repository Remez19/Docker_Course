# All the instructions here tells the docker how 
# to build the Image! 

# With the "FORM" command we build our image from a base image.
FROM node:latest

# With the "WORKDIR" we tell docker where to run the commands
# (in which folder).
# In this example we need to run our commands in the /app 
WORKDIR /app


# With the "COPY" comannd we tell docker which files that live 
# In our local mechine should go into that image.
# With ". ." we specify two paths:
# The first path is the path outside the container (and outside the image)
# Where the files live that should be copied into the image. 
# The second path is the path inside the image where to put the files 
# inside the image

# Will copy the files to the "/app directory".
# We can also write ". ./app" to be more clear where we copy the files.
COPY . /app

# With "RUN" we tell the docker which command we want to run inside the image.
# By default the command will run in the root folder of our image.

# (because the command "npm install" should be excuted
# inside the "app" folder) 

# Will run in the "/app directory "
RUN npm install 

# Opetional not doing anything.
EXPOSE 3000

# The diffreance between the "RUN" command to  the "CMD" command 
# is that the "RUN" command will run when an image is created.
# The "CMD" command will run when a container is created.
# To "CMD" we pass array ([]) with the commands we want to do.
CMD ["node", "server.js"]
