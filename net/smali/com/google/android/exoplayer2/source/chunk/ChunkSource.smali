.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
.end method

.method public abstract maybeThrowError()V
.end method

.method public abstract onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
.end method
