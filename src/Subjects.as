package {
  import subjects.*;
  import flash.events.Event;
  import flash.display.Stage;
  /**
   * @author iggyvolz
   */
  public class Subjects {
    public static var SUBJECT_OBJECTS:Array=[];
    public static var SUBJECT_NAMES:Array=[];
    public static var theStage:Stage;
    public static function reset():void
    {
      SUBJECT_OBJECTS=[new Tony,new Edyn,new Strag,new Furok,new Ugger,new Freep,new Alaban,new BabyOrathan,new Baldar,new CaveRudwott,new Djarmander,new Googathan,new Heppeswip,new Hubram,new Obsis,new Parathin,new RiverAbaquist,new Severos,new Balamant,new Bisiwog,new Brub,new Drowl,new LeafChogo,new Stagadan,new Drush,new GrassEtiki,new SilthGiant,new Rudwot,new Szhar,new Carillion,new Foamotos,new ForestPlyth,new Garganor,new Hubrum,new IceArboll,new Mossowing,new OceanStrider,new Primroot,new Saranther,new ToadDog,new Vulbor];
      SUBJECT_NAMES=["tony","edyn","strag","furok","ugger","freep","alaban","babyorathan","baldar","caverudwott","djarmander","googathan","heppeswip","hubram","obsis","parathin","riverabaquist","severos","balamant","bisiwog","brub","drowl","leafchogo","stagadan","drush","grassetiki","silthgiant","rudwot","szhar","carillion","foamotos","forestplyth","garganor","hubrum","icearboll","mossowing","oceanstrider","primroot","saranther","toaddog","vulbor"];
      Subjects.theStage.dispatchEvent(new Event("ownersReady"));
    }
  }
}
