package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Alaban extends DreamCreature {
    public function Alaban() {
      creatureName="Alaban";
      inDreamPlane=true;
      catchPhrase=Texts.ALABAN_CATCH_PHRASE;
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
