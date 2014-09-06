package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneRiverAbaquist extends TestCase
  {

    public function TestToTheDreamPlaneRiverAbaquist():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(riverabaquist)").returns;
      var array1:Array=[">riverabaquist.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","River Abaquist")];
      var array2:Array=new InputParser("riverabaquist.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
