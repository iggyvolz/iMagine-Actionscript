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
      assertEquals(new InputParser("i.magine(furok)"),[Texts.I_MAGINE_SUCCESS.replace("%1","furok"),Texts.FUROK_CATCH_PHRASE]);
    }
  }
}
