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
      addTest(new TestMagineAlaban());
      addTest(new TestMagineBabyOrathan());
      addTest(new TestMagineBalamant());
      addTest(new TestMagineBaldar());
      addTest(new TestMagineBisiwog());
      addTest(new TestMagineBrub());
      addTest(new TestMagineCarillion());
      addTest(new TestMagineCaveRudwott());
      addTest(new TestMagineDjarmander());
      addTest(new TestMagineDrowl());
      addTest(new TestMagineDrush());
      addTest(new TestMagineFoamotos());
      addTest(new TestMagineFreep());
      addTest(new TestMagineFurok());
      addTest(new TestMagineGarganor());
      addTest(new TestMagineGoogathan());
      addTest(new TestMagineGrassEtiki());
      addTest(new TestMagineHeppeswip());
      addTest(new TestMagineHubram());
      addTest(new TestMagineHubrum());
      addTest(new TestMagineIceArboll());
      addTest(new TestMagineLeafChogo());
      addTest(new TestMagineMossowing());
      addTest(new TestMagineObsis());
      addTest(new TestMagineOceanStrider());
      addTest(new TestMagineParathin());
      addTest(new TestMaginePrimroot());
      addTest(new TestMagineRiverAbaquist());
      addTest(new TestMagineRudwot());
      addTest(new TestMagineSaranther());
      addTest(new TestMagineSeveros());
      addTest(new TestMagineSilthGiant());
      addTest(new TestMagineStagadan());
      addTest(new TestMagineSzhar());
      addTest(new TestMagineToadDog());
      addTest(new TestMagineUgger());
      addTest(new TestMagineVulbor());
      addTest(new TestToTheDreamPlane());
      addTest(new TestToTheDreamPlaneAgain());
    }
  }
}
