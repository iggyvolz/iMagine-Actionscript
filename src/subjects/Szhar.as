package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Szhar extends DreamCreature {
    public function Szhar() {
      creatureName="Szhar";
      inDreamPlane=true;
      catchPhrase=Texts.SZHAR_CATCH_PHRASE;
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
