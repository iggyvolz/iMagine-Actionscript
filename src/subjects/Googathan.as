package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Googathan extends DreamCreature {
    public function Googathan() {
      creatureName="Googathan";
      inDreamPlane=true;
      catchPhrase=Texts.GOOGATHAN_CATCH_PHRASE;
      addEventListener(Event.ENTER_FRAME,setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      removeEventListener(Event.ENTER_FRAME,setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("tony")];
    }
  }
}