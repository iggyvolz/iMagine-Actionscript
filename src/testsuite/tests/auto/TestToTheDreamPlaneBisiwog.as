package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneBisiwog extends TestCase
  {

    public function TestToTheDreamPlaneBisiwog():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(bisiwog)").returns;
      var array1:Array=[">bisiwog.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Bisiwog")];
      var array2:Array=new InputParser("bisiwog.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
