.class Lo/xs$3$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xs$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Lo/xs$3;

.field final synthetic ˏ:Lo/xu;

.field final synthetic ॱ:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/xs$3;Lo/xu;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/xs$3$2;->ˋ:Lo/xs$3;

    iput-object p2, p0, Lo/xs$3$2;->ˏ:Lo/xu;

    iput-object p3, p0, Lo/xs$3$2;->ॱ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lo/xs$3$2;->ˏ:Lo/xu;

    iget-object v1, p0, Lo/xs$3$2;->ॱ:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/xu;->ˋ(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 90
    return-void
.end method
