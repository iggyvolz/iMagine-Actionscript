package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneCaveRudwott extends TestCase
  {

    public function TestToTheDreamPlaneCaveRudwott():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(caverudwott)").returns;
      var array1:Array=[">caverudwott.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Cave Rudwott")];
      var array2:Array=new InputParser("caverudwott.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
