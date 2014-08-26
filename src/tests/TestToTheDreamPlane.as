package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlane extends TestCase
  {

    public function TestToTheDreamPlane()
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("i.magine(furok)"); // Make sure Furok is out before testing
      var array1:Array=[">furok.tothedreamplane",Texts.TO_THE_DREAM_PLANE.replace("%1","Furok")];
      var array2:Array=new InputParser("furok.tothedreamplane").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
