import type { FrameData } from '../models/AppModels'

export class VideoProcessor {
  @Concurrent
  async extractVideoFrames(videoPath: string): Promise<FrameData[]> {
    // TODO: Use HarmonyOS multimedia APIs to decode frames and sample keyframes
    return [];
  }
}



