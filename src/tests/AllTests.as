package tests
{
  import asunit.framework.TestSuite;

  public class AllTests extends TestSuite
  {
    public function AllTests()
    {
      super();
      addTest(new TestMagine());
      addTest(new TestMagineAgain());
      addTest(new TestToTheDreamPlane());
      addTest(new TestToTheDreamPlaneAgain());
    }
  }
}
