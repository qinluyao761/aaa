.class public final Lcom/netflix/cl/model/event/session/command/RefreshCommand;
.super Lcom/netflix/cl/model/event/session/command/Command;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/command/Command;-><init>()V

    .line 15
    const-string v0, "RefreshCommand"

    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/command/RefreshCommand;->addContextType(Ljava/lang/String;)V

    .line 16
    return-void
.end method
