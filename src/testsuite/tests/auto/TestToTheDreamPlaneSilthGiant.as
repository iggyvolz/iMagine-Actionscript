package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneSilthGiant extends TestCase
  {

    public function TestToTheDreamPlaneSilthGiant():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(silthgiant)").returns;
      var array1:Array=[">silthgiant.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Silth Giant")];
      var array2:Array=new InputParser("silthgiant.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
