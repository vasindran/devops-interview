Application deployment in Azure:
  1. Registered application with accuweather portal and approved with API key to use the location services
  2. Deployed the application locally and tested the application functionality with local host URL. https://localhost:5001/
  3. Once application works fine, terraform file created to deploy the application in Azure.

About Azure app service (Points gathered from microsoft documents)

App Service not only adds the power of Microsoft Azure to your application, such as security, load balancing, autoscaling, and automated management. You can also take advantage of its DevOps capabilities, such as continuous deployment from Azure DevOps, GitHub, Docker Hub, and other sources, package management, staging environments, custom domain, and TLS/SSL certificates.

Why Azure app service is chosen to deploy this application is:

1. (automatic or manual) Scaling to multiple instances
2. SSL termination with built-in certs
3. Easy app setting configuration
4. IP restriction support
5. Easy Auth - and other authentication providers built-in support

There are 2 repositories i have added here, one is application repository which is modified with my API key, another one is Azure repo which i have used for application deployment.

1. devops-interview
2. devops-interview-testing

Application working URL:
https://webapp-bradyweatherapplication.azurewebsites.net/