.class public final Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$containerId$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/Ur;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ve;-><init>(Landroid/view/ViewStub;I)V
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
.field final synthetic ॱ:Lo/ve;


# direct methods
.method public constructor <init>(Lo/ve;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$containerId$2;->ॱ:Lo/ve;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$containerId$2;->ॱ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final ॱ()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoDescriptionUIView$containerId$2;->ॱ:Lo/ve;

    invoke-virtual {v0}, Lo/ve;->ˋ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method
