Class FirstList.Day1 Extends %RegisteredObject
{

Property numberedlist As %String;

ClassMethod UseBuild()
{
    /// Works ///
    set (a,b,c,d,e)=0
    set numberlist=$LISTBUILD("1721","979","366","299")
    set $LISTBUILD(a,b,c,d,e)=numberlist
    write "a=",a," b=",b," c=",c," d=",d," e=",e
}

ClassMethod UseString()
{
    /// Works ///
    set namestring="Deborah Noah Martha Bowie"
    set namelist=$LISTFROMSTRING(namestring," ")
    write !,"1st element: ",$LIST(namelist,1)
    set time=$LIST(namelist,1)
    write !, time
}

ClassMethod ListReplacement()
{
  SET $LIST(fruit,2)="orange"   ; count from beginning of list
  write !, fruit
  SET $LIST(fruit,*)="pear"     ; element at end of list
  write !, fruit
  SET $LIST(fruit,*-2)="peach"  ; offset from end of list}
  write !, fruit
  SET $LIST(fruit,2)=""
  write !, fruit
}

ClassMethod Piecing()
{
   SET colorlist="Red,Green,Blue,Yellow,Orange,Black"
   SET extract=$PIECE(colorlist,",",3,5)
   WRITE extract
}

}
