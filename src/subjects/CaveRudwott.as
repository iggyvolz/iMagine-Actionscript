package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class CaveRudwott extends DreamCreature {
    public function CaveRudwott() {
      creatureName="Cave Rudwott";
      inDreamPlane=true;
      catchPhrase=Texts.CAVE_RUDWOTT_CATCH_PHRASE;
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
