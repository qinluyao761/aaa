.class public final Lcom/netflix/cl/model/event/session/command/PauseCommand;
.super Lcom/netflix/cl/model/event/session/command/TrickplayCommand;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/command/TrickplayCommand;-><init>()V

    .line 13
    const-string v0, "PauseCommand"

    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/command/PauseCommand;->addContextType(Ljava/lang/String;)V

    .line 14
    return-void
.end method
