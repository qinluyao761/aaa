.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIView$containerId$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/Ur;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kw;-><init>(Landroid/view/ViewGroup;Lo/Ur;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;Lo/Ur<Ljava/lang/Integer;>;"
    }
.end annotation


# instance fields
.field final synthetic ॱ:Lo/Kw;


# direct methods
.method public constructor <init>(Lo/Kw;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIView$containerId$2;->ॱ:Lo/Kw;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIView$containerId$2;->ॱ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final ॱ()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIView$containerId$2;->ॱ:Lo/Kw;

    invoke-virtual {v0}, Lo/Kw;->ʽ()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    return v0
.end method
