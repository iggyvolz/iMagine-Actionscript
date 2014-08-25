package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineSzhar extends TestCase
  {

    public function TestMagineSzhar():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">strag.magine(szhar)",Texts.I_MAGINE_SUCCESS.replace("%1","Szhar"),Texts.SZHAR_CATCH_PHRASE,Subjects.SUBJECT_NAMES[0].ucfirst()+" lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("strag.magine(szhar)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
