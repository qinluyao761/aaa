.class Lo/EC$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Lo/EC;


# direct methods
.method constructor <init>(Lo/EC;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/EC$9;->ˋ:Lo/EC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 159
    iget-object v0, p0, Lo/EC$9;->ˋ:Lo/EC;

    invoke-static {v0}, Lo/EC;->ʼ(Lo/EC;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    .line 160
    invoke-static {v3}, Lo/MR;->ˎ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->ʼ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lo/EC$9;->ˋ:Lo/EC;

    invoke-static {v0}, Lo/EC;->ˏ(Lo/EC;)Lo/gH;

    move-result-object v4

    .line 163
    if-eqz v4, :cond_0

    .line 164
    iget-object v0, p0, Lo/EC$9;->ˋ:Lo/EC;

    invoke-static {v0}, Lo/EC;->ˊ(Lo/EC;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/EC$9;->ˋ:Lo/EC;

    invoke-static {v1}, Lo/EC;->ॱ(Lo/EC;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object v2, p0, Lo/EC$9;->ˋ:Lo/EC;

    invoke-static {v2}, Lo/EC;->ˋ(Lo/EC;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-interface {v4, v0, v1, v2}, Lo/gH;->ˋ(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 166
    :cond_0
    goto :goto_0

    .line 167
    :cond_1
    const v0, 0x7f120566

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Lo/จ;->ˊ(Landroid/content/Context;II)V

    .line 170
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    return-void
.end method
