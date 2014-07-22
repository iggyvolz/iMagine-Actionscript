package subjects {
	import Subjects;
	import flash.events.*;
	/**
	 * @author iggyvolz
	 */
	public class Freep extends DreamCreature {
		public function Freep() {
			creatureName="Freep";
			inDreamPlane=true;
			catchPhrase=Texts.FREEP_CATCH_PHRASE;
			addEventListener(Event.ENTER_FRAME,setOwner);
		}
		public function setOwner(e:*):void
		{
			e;
			removeEventListener(Event.ENTER_FRAME,setOwner);
			owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("strag")];
		}
		public function shellshock(args:Array):Array
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
			return [Texts.FREEP_SHELL_SHOCK];
		}
		public function reboundvortex(args:Array):Array
		{
			var shield:Shield=new Shield(100,"Freep","Rebound Vortex");
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
			toReturn.push(Texts.FREEP_REBOUND_VORTEX);
			return toReturn;
		}
		public function shieldgong(args:Array):Array
		{
			var shield:Shield=new Shield(100,"Freep","Shield Gong");
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
			toReturn.push(Texts.FREEP_SHIELD_GONG);
			return toReturn;
		}
		public function shellguard(args:Array):Array
		{
			var shield:Shield=new Shield(100,"Freep","Shell Guard");
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
			toReturn.push(Texts.FREEP_SHELL_GUARD);
			return toReturn;
		}
		public function shellsaw(args:Array):Array
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
			return [Texts.FREEP_SHELL_SAW];
		}
		public function shellscatter(args:Array):Array
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
			return [Texts.FREEP_SHELL_SCATTER];
		}
		public function shellsiege(args:Array):Array
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
			return [Texts.FREEP_SHELL_SIEGE];
		}
		public function slamursault(args:Array):Array
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
			return [Texts.FREEP_SLAMURSAULT];
		}
	}
}
