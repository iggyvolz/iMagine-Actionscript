package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneObsis extends TestCase
  {

    public function TestToTheDreamPlaneObsis():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(obsis)").returns;
      var array1:Array=[">obsis.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Obsis")];
      var array2:Array=new InputParser("obsis.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
