package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneGrassEtiki extends TestCase
  {

    public function TestToTheDreamPlaneGrassEtiki():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(grassetiki)").returns;
      var array1:Array=[">grassetiki.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Grass Etiki")];
      var array2:Array=new InputParser("grassetiki.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
