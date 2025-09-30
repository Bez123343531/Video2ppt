export interface ProcessingProgressProps {
  progress: number;
  status: string;
}

@Component
export struct ProcessingProgress {
  @Prop progress: number = 0;
  @Prop status: string = 'idle';

  build() {
    Column() {
      Text(`${this.status} ${this.progress}%`)
      Progress({ value: this.progress })
        .width('100%')
    }
    .width('100%')
    .padding(12)
  }
}



