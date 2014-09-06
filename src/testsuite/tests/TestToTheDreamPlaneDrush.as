package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneDrush extends TestCase
  {

    public function TestToTheDreamPlaneDrush():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(drush)").returns;
      var array1:Array=[">drush.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Drush")];
      var array2:Array=new InputParser("drush.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
