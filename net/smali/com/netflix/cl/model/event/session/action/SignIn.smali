.class public Lcom/netflix/cl/model/event/session/action/SignIn;
.super Lcom/netflix/cl/model/event/session/action/Action;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/Exclusive;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/Action;-><init>()V

    .line 15
    const-string v0, "SignIn"

    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/SignIn;->addContextType(Ljava/lang/String;)V

    .line 16
    return-void
.end method
