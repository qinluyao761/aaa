.class Lo/yC$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yC;->ˎ(Lcom/netflix/mediaclient/StatusCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ॱ:Lo/yC;


# direct methods
.method constructor <init>(Lo/yC;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/yC$3;->ॱ:Lo/yC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lo/yC$3;->ॱ:Lo/yC;

    invoke-virtual {v0}, Lo/yC;->dismiss()V

    .line 126
    iget-object v0, p0, Lo/yC$3;->ॱ:Lo/yC;

    sget-object v1, Lo/LK;->ˋ:Lo/LK$if;

    iget-object v2, p0, Lo/yC$3;->ॱ:Lo/yC;

    invoke-virtual {v2}, Lo/yC;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/LK$if;->ˏ(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/yC;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
