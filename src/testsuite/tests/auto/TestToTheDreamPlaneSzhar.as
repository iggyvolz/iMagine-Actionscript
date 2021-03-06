package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneSzhar extends TestCase
  {

    public function TestToTheDreamPlaneSzhar():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(szhar)").returns;
      var array1:Array=[">szhar.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Szhar")];
      var array2:Array=new InputParser("szhar.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
