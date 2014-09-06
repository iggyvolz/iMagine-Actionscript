package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneSeveros extends TestCase
  {

    public function TestToTheDreamPlaneSeveros():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(severos)").returns;
      var array1:Array=[">severos.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Severos")];
      var array2:Array=new InputParser("severos.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
