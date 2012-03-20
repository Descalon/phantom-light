﻿package nl.jorisdormans.phantom2D.objects.misc 
{
	import nl.jorisdormans.phantom2D.objects.GameObjectComponent;
	/**
	 * A component that destroys 
	 * @author Joris Dormans
	 */
	public class LimitedLife extends GameObjectComponent
	{
		public static const E_DIED:String = "died";
		
		private var life:Number;
		
		public function LimitedLife(life:Number) 
		{
			this.life = life;
		}
		
		override public function update(elapsedTime:Number):void 
		{
			super.update(elapsedTime);
			life-= elapsedTime;
			if (life <= 0) {
				gameObject.sendMessage(E_DIED);
				gameObject.destroyed = true;
			}
		}
		
	}

}