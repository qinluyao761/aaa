.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NmAbConfig"
.end annotation


# instance fields
.field public cellId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cellId"
    .end annotation
.end field

.field public testId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "testId"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
