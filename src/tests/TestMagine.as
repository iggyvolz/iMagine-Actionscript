package tests
{
  import asunit.framework.TestCase;

  public class TestMagine extends TestCase
  {

    public function TestMagine(testMethod:String)
    {
      super(testMethod);
    }
    public function BasicTestMagine():void
    {
      var array1:Array=[Texts.I_MAGINE_SUCCESS.replace("%1","Furok"),Texts.FUROK_CATCH_PHRASE,Subjects.SUBJECT_NAMES[0].ucfirst()+" lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("i.magine(furok)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
    public function TestMagineAgain():void
    {
      var array1:Array=[Texts.ALREADY_IN_BATTLE.replace("%1","Furok")];
      var array2:Array=new InputParser("i.magine(furok)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
