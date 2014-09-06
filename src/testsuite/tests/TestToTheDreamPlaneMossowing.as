package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneMossowing extends TestCase
  {

    public function TestToTheDreamPlaneMossowing():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(mossowing)").returns;
      var array1:Array=[">mossowing.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Mossowing")];
      var array2:Array=new InputParser("mossowing.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
