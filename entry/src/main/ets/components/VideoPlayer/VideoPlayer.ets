import type { VideoInfo } from '../../models/AppModels'

export interface VideoPlayerProps {
  source: VideoInfo;
}

@Component
export struct VideoPlayer {
  @Prop source: VideoInfo = { uri: '' };

  build() {
    // TODO: replace with ArkUI Video component and controls
    Column() {
      Text(`Video: ${this.source.uri}`)
        .fontSize(16)
    }
    .width('100%')
  }
}



