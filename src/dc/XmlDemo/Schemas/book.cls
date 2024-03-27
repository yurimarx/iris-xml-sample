/// Created from: /home/irisowner/dev/xml_input/books.xsd
Class dc.XmlDemo.Schemas.book Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter XMLNAME = "book";

Parameter XMLSEQUENCE = 1;

Property author As %String(MAXLEN = "", XMLNAME = "author") [ Required ];

Property title As %String(MAXLEN = "", XMLNAME = "title") [ Required ];

Property genre As %String(MAXLEN = "", XMLNAME = "genre") [ Required ];

Property price As %Numeric(XMLNAME = "price") [ Required ];

Property publish As %Date(XMLNAME = "publish") [ Required ];

Property description As %String(MAXLEN = "", XMLNAME = "description") [ Required ];

Property id As %String(MAXLEN = "", XMLNAME = "id", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship catalog As dc.XmlDemo.Schemas.catalog(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = book ];

Storage Default
{
<Data name="bookDefaultData">
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
<Value>description</Value>
</Value>
<Value name="8">
<Value>id</Value>
</Value>
<Value name="9">
<Value>catalog</Value>
</Value>
</Data>
<DataLocation>^dc.XmlDemo.Schemas.bookD</DataLocation>
<DefaultData>bookDefaultData</DefaultData>
<IdLocation>^dc.XmlDemo.Schemas.bookD</IdLocation>
<IndexLocation>^dc.XmlDemo.Schemas.bookI</IndexLocation>
<StreamLocation>^dc.XmlDemo.Schemas.bookS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
