import type { VideoInfo } from '../../models/AppModels'
import { PermissionManager } from '../../services/PermissionManager'

@Component
export struct VideoSourceSelector {
  @Prop onVideoSelected: (info: VideoInfo) => void = () => {};

  private permissionManager: PermissionManager = new PermissionManager();

  async selectLocalVideo() {
    // TODO: integrate system file picker and media library
  }

  async processOnlineVideo(url: string) {
    // TODO: download to cache and validate
  }

  async startScreenRecording() {
    // TODO: invoke screen recording APIs
  }

  build() {
    Column() {
      Button('Select Local Video')
        .onClick(async () => {
          await this.selectLocalVideo();
        })
      Button('Process Online Video')
        .onClick(async () => {
          await this.processOnlineVideo('');
        })
      Button('Start Screen Recording')
        .onClick(async () => {
          await this.startScreenRecording();
        })
    }
    .padding(12)
  }
}



