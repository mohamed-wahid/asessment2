# Instructions 

In the base folder of the project, run the following commands:  

>``dotnet build``   

>``dotnet run``   

This will start the app running on http://localhost:8080   
This can be changed in Properties/launchSettings.  

Access the app at http://localhost:8080/index.html   

To stop the app type Ctrl+c in your shell.  

## Docker instructions

To build the Docker image, make sure your in the project folder in a shell.   
Run the command:

>``docker build . -f .\Dockerfile -t pattzor/myweb``

This will build your image, naming it pattzor/myweb.  
You could/should rename it to your own, like 'myname/myimage'.   

To run the image in a contianer, run this in a shell:

>``docker run -d -p 3000:80 --name myWeb pattzor/myweb``   

This will run the image pattzor/myweb, mapping the container port 80, to your laptop port 3000.   
You should now be able to reach the application: http://localhost:3000   
