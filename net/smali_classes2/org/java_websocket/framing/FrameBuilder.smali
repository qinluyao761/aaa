.class public interface abstract Lorg/java_websocket/framing/FrameBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/java_websocket/framing/Framedata;


# virtual methods
.method public abstract setFin(Z)V
.end method

.method public abstract setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V
.end method

.method public abstract setPayload(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract setTransferemasked(Z)V
.end method
