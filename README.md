 [![Gitter](https://img.shields.io/badge/Available%20on-Intersystems%20Open%20Exchange-00b2a9.svg)](https://openexchange.intersystems.com/package/iris-xml-sample)
 [![Quality Gate Status](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Firis-xml-sample&metric=alert_status)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Firis-xml-sample)
 [![Reliability Rating](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Firis-xml-sample&metric=reliability_rating)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Firis-xml-sample)
# iris-xml-sample
This is a sample of InterSystems IRIS Interoperability solution.
It contains a simple interoperablity solution which reads a XML file and save to an IRIS SQL Table.

## install the sample

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/yurimarx/iris-xml-sample.git
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```

## Run the Sample

1. Get the project source code
2. [Click here](http://localhost:52796/csp/user/EnsPortal.ProductionConfig.zen?$NAMESPACE=USER&$NAMESPACE=USER&) to go to the production
3. Start the production (start button)
4. Copy the books.xml file (root project folder) to the folder xml_input
5. See the results doing this select: SELECT 
ID, author, description, genre, price, publish, title, totalDays
FROM dc_XmlDemo.Catalog 
