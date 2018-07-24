# Modernizing Legacy ASP.NET App with Containers

In this post I am going to modernize a legacy ASP.NET 2.0 web application using <b>Visual Studio 2017</b> and <b>Dockers</b> on <b>Windows 10 Enterprise</b>. Benefit of running an application inside a container is isolation and portability. Once an application is inside a container it can be moved to any platform on-prem or on cloud which supports Containers.

1. Make sure the Dockers is running and then <b>Switch to Windows containers</b>.
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/01.png" />

2. Get the source from github.
```
git clone https://github.com/AlgoNinja/modernize-aspnetapp SampleApp
```
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/02.png" />

3. Open the solution in <b>Visual Studio 2017</b>. Compile and Run the app with <b>IIS</b> to see make sure it runs without an error.
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/03.png" />

4. Add Container support to the project in Visual Studio by <b>R-click</b> the solution -> <b>Add</b> -> <b>Docker Support</b>
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/04.png" />

5. Content of the <b>Dockerfile</b> should look like following:
```
FROM microsoft/aspnet
ARG source
WORKDIR /inetpub/wwwroot
COPY ${source:-obj/Docker/publish} .
```
6. Run the application with <b>Docker</b> option selected in Visual Studio. 
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/05.png" />

7. The legacy ASP.NET 2.0 Web App has been moderanized and is running inside the container (observe the ip address instead of the http://localhost).
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/06.png" />

8. You can see the container image which contains ASP.NET application by running the following command:
```
docker images
```
<img src="https://github.com/AlgoNinja/modernize-aspnetapp/blob/master/images/07.png" />

Thats it :o). This container now can be moved to any cloud. 
