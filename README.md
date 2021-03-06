# Measure Platform Docker deployment for DataBio Project

This project is an implementation of dockerization of **[Measure Platform](http://measure-platform.org/)** for monitoring Enterprise Architecture Models realized in the context of the H2020 research project **[DataBio](https://www.databio.eu/)**. Running Measure Platform in multi-container Docker applications allows faster and reliable deployment of Measure platform and its dependencies such as [Elasticsearch](https://www.elastic.co/fr/products/elasticsearch), [Kibana](https://www.elastic.co/fr/products/kibana), [MySQL](https://www.mysql.com/), [Hawk Server](https://projects.eclipse.org/proposals/eclipse-hawk), etc.

![Image of Yaktocat](https://github.com/measureproduct/MeasureProductDockerDeploymentForDataBio/raw/master/resources/logo-platform.png)


![Image of Yaktocat](https://github.com/measureproduct/MeasureProductDockerDeploymentForDataBio/raw/master/resources/databio-footer.png)

## Setup Measure Platform on your machine

1. First Install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) on you machine.  
2. Second download  project repository either by downloading the zip file and unzipping it in a custom folder on you machine or by running the following command that requires [Git](https://git-scm.com/) to be installed
```bash
git clone https://github.com/measureproduct/MeasureProductDockerDeploymentForDataBio.git
```
3. Add Hawk instances for the ArchiMate models that you want to monitor following the example ginven at this location [`hawk-server/hawk-instances/hawk-instance-example1.xml`](https://github.com/measureproduct/MeasureProductDockerDeploymentForDataBio/blob/master/hawk-server/hawk-instances/hawk-instance-example1.xml) where you need to add the URL and the credentials of the SVN repository of your Model.

4. Inside the project, run the following command to build Docker Images and launching the conatiners for Measure Platform and its dependencies
```bash
docker-compose up
```
5. After Measure Platform is built, you can access it by default at the following URL: `http://localhost/measure/` 

## Monitoring DataBio Enterprise Architecture Models (ArchiMate)


### Adding new Measures
Select Metric from the catalog


### Create Dashboards for visualization

For more information about how to deploy Measure Platform for DataBio Models Analytics, consider watching the demo at the following link: https://youtu.be/FkD9Am8m5HU

