package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneRudwot extends TestCase
  {

    public function TestToTheDreamPlaneRudwot():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(rudwot)").returns;
      var array1:Array=[">rudwot.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Rudwot")];
      var array2:Array=new InputParser("rudwot.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
