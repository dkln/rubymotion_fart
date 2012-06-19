class FartController < UIViewController
  def loadView
    self.view = FartView.alloc.init
  end

  def canBecomeFirstResponder
    true
  end

  def soundPath
    NSURL.fileURLWithPath(NSBundle.mainBundle.pathForResource('fart', ofType: 'caf'))
  end

  def playSound
    AVAudioPlayer.alloc.initWithContentsOfURL(soundPath, error:Pointer.new(:object)).play
  end

end
