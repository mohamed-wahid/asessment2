# Instructions 

In the base folder of the project, run the following commands:  

>``dotnet build``   

>``dotnet run``   

This will start the app running on http://localhost:8080   
This can be changed in Properties/launchSettings.  

Access the app at http://localhost:8080/index.html   

To stop the app type Ctrl+c in your shell.  

The application now uses an environment variable to read the connection string.  
This way you can easily change the SQL server you want to use.  
If you want to set the environment variable in VS Code, open a terminal and run the command:  

>``$Env:ConnectionString="Server=localhost,1433;Database=Pluto;User Id=sa;Password=Password123;"``  

Note that this must be done for every terminal you use to start your application in.   

## Docker instructions

**NOTE:** You should change the ENV for the connection string in the Dockerfile to match your environment.  

To build the Docker image, make sure your in the project folder in a shell.   
Run the command:

>``docker build . -f .\Dockerfile.backend -t pattzor/myweb``

This will build your image, naming it pattzor/myweb.  
You could/should rename it to your own, like 'myname/myimage'.   

To run the image in a contianer, run this in a shell:

>``docker run -d -p 3000:80 --name myWeb pattzor/myweb``   

This will run the image pattzor/myweb, mapping the container port 80, to your laptop port 3000.   
You should now be able to reach the application: http://localhost:3000   

## Docker compose instructions  

To run the docker-compose file:  

>``docker-compose up -d``  

Make sure you run this command in the same folder as the docker-compose.yml file.  

To stop the containers:  

>``docker-compose down``  

