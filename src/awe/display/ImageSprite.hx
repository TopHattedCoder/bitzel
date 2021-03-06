package awe.display;
import flash.display.BitmapData;
import flash.geom.Point;
class ImageSprite extends Sprite {
	public var image:BitmapData;
	public function new(image:BitmapData) {
		super();
		this.image = image;
		this.width = image.width;
		this.height = image.height;
	}
	public override function render(b:BitmapData) {
		b.copyPixels(image, image.rect, new Point(this.x, this.y));
	}
	public override function toString():String {
		return '($width x $height) image at ($x, $y)';
	}
}