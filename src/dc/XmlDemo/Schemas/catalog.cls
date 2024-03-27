/// 
Class dc.XmlDemo.Schemas.catalog Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter XMLNAME = "catalog";

Parameter XMLSEQUENCE = 1;

Relationship book As dc.XmlDemo.Schemas.book(XMLNAME = "book", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = catalog ];

Storage Default
{
<Data name="catalogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^dc.XmlDemo.Schemas.catalogD</DataLocation>
<DefaultData>catalogDefaultData</DefaultData>
<IdLocation>^dc.XmlDemo.Schemas.catalogD</IdLocation>
<IndexLocation>^dc.XmlDemo.Schemas.catalogI</IndexLocation>
<StreamLocation>^dc.XmlDemo.Schemas.catalogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
