.class final Lo/Jk$If;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jk;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Landroid/view/ViewGroup;

.field final synthetic ॱ:Lo/Jk;


# direct methods
.method constructor <init>(Lo/Jk;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lo/Jk$If;->ॱ:Lo/Jk;

    iput-object p2, p0, Lo/Jk$If;->ˋ:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lo/Jk$If;->ॱ:Lo/Jk;

    sget-object v1, Lo/Ho$AUX;->ˊ:Lo/Ho$AUX;

    invoke-virtual {v0, v1}, Lo/Jk;->ˊ(Ljava/lang/Object;)V

    return-void
.end method
