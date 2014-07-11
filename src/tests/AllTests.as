package tests
{
  import asunit.framework.TestSuite;

  public class AllTests extends TestSuite
  {
    public function AllTests()
    {
      super();
      addTest(new TestMagine("BasicTestMagine"));
      addTest(new TestMagine("TestMagineAgain"));
      addTest(new TestToTheDreamPlane("BasicTestToTheDreamPlane"));
      addTest(new TestToTheDreamPlane("TestToTheDreamPlaneAgain"));
    }
  }
}
