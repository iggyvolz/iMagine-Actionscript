package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Vulbor extends DreamCreature {
    public function Vulbor() {
      creatureName="Vulbor";
      inDreamPlane=true;
      catchPhrase=Texts.VULBOR_CATCH_PHRASE;
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
