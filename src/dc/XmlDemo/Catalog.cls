Class dc.XmlDemo.Catalog Extends %Persistent
{

Property author As %String(MAXLEN = 200);

Property title As %String;

Property genre As %String;

Property price As %Double;

Property publish As %Date;

Property totalDays As %Integer;

Property description As %String(MAXLEN = "");

Storage Default
{
<Data name="CatalogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
<Value name="3">
<Value>title</Value>
</Value>
<Value name="4">
<Value>genre</Value>
</Value>
<Value name="5">
<Value>price</Value>
</Value>
<Value name="6">
<Value>publish</Value>
</Value>
<Value name="7">
<Value>totalDays</Value>
</Value>
<Value name="8">
<Value>description</Value>
</Value>
</Data>
<DataLocation>^dc.XmlDemo.CatalogD</DataLocation>
<DefaultData>CatalogDefaultData</DefaultData>
<IdLocation>^dc.XmlDemo.CatalogD</IdLocation>
<IndexLocation>^dc.XmlDemo.CatalogI</IndexLocation>
<StreamLocation>^dc.XmlDemo.CatalogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
