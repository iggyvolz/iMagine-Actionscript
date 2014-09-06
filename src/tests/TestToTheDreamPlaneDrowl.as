package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneDrowl extends TestCase
  {

    public function TestToTheDreamPlaneDrowl():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(drowl)").returns;
      var array1:Array=[">drowl.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Drowl")];
      var array2:Array=new InputParser("drowl.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
