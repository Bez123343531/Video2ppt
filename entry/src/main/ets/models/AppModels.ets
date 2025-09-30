import { image } from '@kit.ImageKit'
export type ProcessingStatus = 'idle' | 'preparing' | 'extracting' | 'analyzing' | 'generating' | 'completed' | 'failed';

export interface ProcessingState {
  status: ProcessingStatus;
  progress: number; // 0-100
  errorMessage?: string;
}

export interface VideoInfo {
  uri: string;
  durationMs?: number;
  width?: number;
  height?: number;
  mimeType?: string;
}

export interface FrameData {
  index: number;
  timestampMs: number;
  imagePixelMap?: image.PixelMap;
}

export interface ContentAnalysis {
  labels: string[];
  textBlocks: string[];
  confidence: number;
}



