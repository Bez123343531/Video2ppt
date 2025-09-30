import Video2PPTMainPage from '../pages/main/Video2PPTMainPage'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Video2PPTMainPage()
    }
    .width('100%')
    .height('100%')
  }
}