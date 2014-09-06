package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneBaldar extends TestCase
  {

    public function TestToTheDreamPlaneBaldar():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(baldar)").returns;
      var array1:Array=[">baldar.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Baldar")];
      var array2:Array=new InputParser("baldar.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
