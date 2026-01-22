FROM node:18
WORKDIR /app
# On télécharge et installe l'app (basé sur ton script)
RUN apt-get update && apt-get install -y wget unzip
RUN wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-200-ACCAP1-1-91571/1-lab-capstone-project-1/code.zip
RUN unzip code.zip -x "resources/codebase_partner/node_modules/*"
WORKDIR /app/resources/codebase_partner
RUN npm install aws-sdk
EXPOSE 80
CMD ["npm", "start"]