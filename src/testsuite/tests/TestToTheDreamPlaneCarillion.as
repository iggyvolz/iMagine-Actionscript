package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneCarillion extends TestCase
  {

    public function TestToTheDreamPlaneCarillion():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(carillion)").returns;
      var array1:Array=[">carillion.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Carillion")];
      var array2:Array=new InputParser("carillion.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
