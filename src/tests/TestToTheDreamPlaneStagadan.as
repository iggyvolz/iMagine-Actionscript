package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneStagadan extends TestCase
  {

    public function TestToTheDreamPlaneStagadan():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(stagadan)").returns;
      var array1:Array=[">stagadan.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Stagadan")];
      var array2:Array=new InputParser("stagadan.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
