.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/UA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;Lo/UA<Lcom/netflix/mediaclient/media/Language;Lo/Tj;>;"
    }
.end annotation


# instance fields
.field final synthetic ˏ:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;->ˏ:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;->ॱ(Lcom/netflix/mediaclient/media/Language;)V

    sget-object v0, Lo/Tj;->ˊ:Lo/Tj;

    return-object v0
.end method

.method public final ॱ(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;->ˏ:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    new-instance v1, Lo/ڔ$AUx;

    const-string v2, "language"

    invoke-static {p1, v2}, Lo/Vb;->ॱ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lo/ڔ$AUx;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lo/ڔ;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->ˏ(Lo/ڔ;)V

    .line 491
    return-void
.end method
