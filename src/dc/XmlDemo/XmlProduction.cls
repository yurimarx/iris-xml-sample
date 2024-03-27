Class dc.XmlDemo.XmlProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="dc.XmlDemo.XmlProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="SqlInsertOperation" Category="" ClassName="EnsLib.SQL.Operation.GenericOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">User</Setting>
    <Setting Target="Adapter" Name="JDBCClasspath">/usr/irissys/dev/java/lib/1.8/intersystems-jdbc-3.8.0.jar</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">com.intersystems.jdbc.IRISDriver</Setting>
    <Setting Target="Adapter" Name="JGService">IrisGateway</Setting>
    <Setting Target="Host" Name="InputParameters">*author,*description,*genre,*price,*publish,*title,*publish</Setting>
    <Setting Target="Host" Name="Query">insert into dc_XmlDemo.Catalog(author, description, genre, price, publish, title,totalDays) values (?,?,?,?,DATE(?),?,DATEDIFF('d',?,CURRENT_DATE))</Setting>
    <Setting Target="Adapter" Name="Credentials">IrisCreds</Setting>
    <Setting Target="Host" Name="RequestClass">dc.XmlDemo.Schemas.book</Setting>
    <Setting Target="Host" Name="ResponseClass"></Setting>
  </Item>
  <Item Name="IrisGateway" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ClassPath">/usr/irissys/dev/java/lib/1.8/*.jar</Setting>
  </Item>
  <Item Name="XmlObjectService" Category="" ClassName="EnsLib.XML.Object.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ClassName">dc.XmlDemo.Schemas.book</Setting>
    <Setting Target="Host" Name="ElementName">book</Setting>
    <Setting Target="Host" Name="TargetConfigNames">SqlInsertOperation</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/home/irisowner/dev/xml_output/</Setting>
    <Setting Target="Adapter" Name="FilePath">/home/irisowner/dev/xml_input/</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.xml</Setting>
  </Item>
</Production>
}

}
