package subjects {
	import Subjects;
	import flash.events.*;
	/**
	 * @author iggyvolz
	 */
	public class Ugger extends DreamCreature {
		public function Ugger() {
			creatureName="Ugger";
			inDreamPlane=true;
			catchPhrase=Texts.UGGER_CATCH_PHRASE;
			addEventListener(Event.ENTER_FRAME,setOwner);
		}
		public function setOwner(e:*):void
		{
			e;
			removeEventListener(Event.ENTER_FRAME,setOwner);
			owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("edyn")];
		}
		public function rootreach(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.UGGER_ROOT_REACH];
		}
		public function treemerge(args:Array):Array
		{
			var shield:Shield=new Shield(100,"Ugger","Tree Merge");
			var toReturn:Array=[];
			for(var i:uint=0;i<args.length;i++)
			{
				if(Subjects.SUBJECT_NAMES.indexOf(args[i])==-1)
				{
					toReturn.push(Texts.SUBJECT_NOT_FOUND.replace("%1",args[i]));
				}
				else
				{
					Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(args[i])].shields.push(shield);
				}
			}
			toReturn.push(Texts.UGGER_TREE_MERGE);
			return toReturn;
		}
		public function woodwhip(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.UGGER_WOOD_WHIP];
		}
		public function rootslice(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.UGGER_ROOT_SLICE];
		}
		public function hornblast(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.UGGER_HORN_BLAST];
		}
		public function drillroot(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.UGGER_DRILL_ROOT];
		}
		public function rootlash(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.UGGER_ROOT_LASH];
		}
	}
}
