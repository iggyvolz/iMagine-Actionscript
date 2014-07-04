package tests
{
  import asunit.framework.TestCase;

  public class TestFirstTry extends TestCase
  {

    public function TestFirstTry(testMethod:String)
    {
      super(testMethod);
    }

    public function TestSucceed() : void
    {
      var i:int = 5;
      assertEquals(5, i);
      i += 4;
      assertEquals(9, i);
    }
    public function TestFail() : void
    {
      var i:int = 5;
      assertEquals(5, i);
      i += 2;
      assertEquals(9, i);
    }
  }
}
