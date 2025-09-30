import { NavigationBar } from '../../components/Navigation/NavigationBar'
import { VideoSourceSelector } from '../selector/VideoSourceSelector'
import { VideoPlayer } from '../../components/VideoPlayer/VideoPlayer'
import { ProcessingProgress } from '../../components/ProgressBar/ProcessingProgress'
import { SlidePreview } from '../../components/SlidePreview/SlidePreview'
import { PermissionManager } from '../../services/PermissionManager'
import type { ProcessingState, VideoInfo } from '../../models/AppModels'
import { I18nManager } from '../../services/I18nManager'

@Component
export default struct Video2PPTMainPage {
  @State processingState: ProcessingState = { status: 'idle', progress: 0 };
  @State selectedVideo: VideoInfo | undefined = undefined;
  @State toggleCounter: number = 0;

  private permissionManager: PermissionManager = new PermissionManager();
  private i18n: I18nManager = I18nManager.getInstance();

  aboutToAppear(): void {
    this.permissionManager.requestPermissions();
  }

  build(): void {
    Column() {
      NavigationBar({
        title: this.i18n.t('app.title'),
        toggleCounter: this.toggleCounter
      })

      if (!this.selectedVideo) {
        VideoSourceSelector({
          selectedVideo: this.selectedVideo
        })
      } else {
        Column() {
          VideoPlayer({ source: this.selectedVideo })
          ProcessingProgress({
            progress: this.processingState.progress,
            status: this.processingState.status
          })
          SlidePreview({ frames: [] })
        }
        .padding(12)
        .width('100%')
      }
    }
    .width('100%')
    .height('100%')
  }
}



