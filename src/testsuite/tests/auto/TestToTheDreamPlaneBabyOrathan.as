package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneBabyOrathan extends TestCase
  {

    public function TestToTheDreamPlaneBabyOrathan():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(babyorathan)").returns;
      var array1:Array=[">babyorathan.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Baby Orathan")];
      var array2:Array=new InputParser("babyorathan.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
