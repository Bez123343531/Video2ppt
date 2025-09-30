import type { FrameData } from '../../models/AppModels'

export interface SlidePreviewProps {
  frames: FrameData[];
}

@Component
export struct SlidePreview {
  @Prop frames: FrameData[] = [];

  build() {
    Column() {
      Text('Slides Preview')
        .fontWeight(FontWeight.Medium)
      List() {
        ForEach(this.frames, (f: FrameData) => {
          ListItem() {
            Row() {
              Text(`Frame #${f.index} @ ${f.timestampMs}ms`)
            }
            .padding(8)
          }
        })
      }
      .height(200)
    }
    .width('100%')
  }
}



