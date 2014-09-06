package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneFoamotos extends TestCase
  {

    public function TestToTheDreamPlaneFoamotos():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(foamotos)").returns;
      var array1:Array=[">foamotos.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Foamotos")];
      var array2:Array=new InputParser("foamotos.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
