package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneBalamant extends TestCase
  {

    public function TestToTheDreamPlaneBalamant():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(balamant)").returns;
      var array1:Array=[">balamant.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Balamant")];
      var array2:Array=new InputParser("balamant.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
