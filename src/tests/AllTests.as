package tests
{
  import asunit.framework.TestSuite;

  public class AllTests extends TestSuite
  {
    public static var api:AllTests=null;
    public function AllTests()
    {
      api=this;
      super();
      addTest(new TestMagine());
      addTest(new TestMagineAgain());
