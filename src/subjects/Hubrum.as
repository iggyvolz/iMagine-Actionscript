package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Hubrum extends DreamCreature {
    public function Hubrum() {
      creatureName="Hubrum";
      inDreamPlane=true;
      catchPhrase=Texts.HUBRUM_CATCH_PHRASE;
      Subjects.theStage.addEventListener("ownersReady",setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      Subjects.theStage.removeEventListener("ownersReady",setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("strag")];
    }
  }
}
