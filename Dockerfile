#base image
FROM node:18

#create working dir inside container
WORKDIR /app

#copy package.json and package-lock.json
COPY package*.json ./

#Install dependencies
RUN npm install

#copy rest of the application files
COPY . .

#Expose application port
EXPOSE 3000

#Run my main application
CMD ["node" , "index.js"]
