class FartView < UIView
  attr_accessor :label

  def initWithFrame(frame)
    if super

      @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      @button.setTitle('Fart!', forState: UIControlStateNormal)
      @button.frame = [[100, 100], [100, 50]]
      @button.addTarget(self, action: :fart, forControlEvents: UIControlEventTouchUpInside)

      addSubview(@button)
    end

    self
  end

  def fart
    AVAudioPlayer.alloc.initWithContentsOfURL(soundPath, error:Pointer.new(:object)).play
  end

  private

  def soundPath
    NSURL.fileURLWithPath(NSBundle.mainBundle.pathForResource('fart', ofType: 'caf'))
  end

end
