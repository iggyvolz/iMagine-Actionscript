package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneDjarmander extends TestCase
  {

    public function TestToTheDreamPlaneDjarmander():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(djarmander)").returns;
      var array1:Array=[">djarmander.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Djarmander")];
      var array2:Array=new InputParser("djarmander.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
