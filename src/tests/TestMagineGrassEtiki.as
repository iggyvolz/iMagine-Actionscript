package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineGrassEtiki extends TestCase
  {

    public function TestMagineGrassEtiki():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      addEventListener(Event.ENTER_FRAME,testAfterEnterFrame);
    }
    public function testAfterEnterFrame():void
    {
      var array1:Array=[">tony.magine(grassetiki)",Texts.I_MAGINE_SUCCESS.replace("%1","GrassEtiki"),Texts.GRASS_ETIKI_CATCH_PHRASE,Subjects.SUBJECT_NAMES[0].ucfirst()+" lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(grassetiki)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
