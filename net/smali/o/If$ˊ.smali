.class public final Lo/If$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/Vj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/If;->ॱ(Landroid/view/ViewGroup;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Iterator<Landroid/view/View;>;Lo/Vj;"
    }
.end annotation


# instance fields
.field final synthetic ˊ:Landroid/view/ViewGroup;

.field private ˎ:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/If$ˊ;->ˊ:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 69
    iget v0, p0, Lo/If$ˊ;->ˎ:I

    iget-object v1, p0, Lo/If$ˊ;->ˊ:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lo/If$ˊ;->ˋ()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 71
    iget-object v0, p0, Lo/If$ˊ;->ˊ:Landroid/view/ViewGroup;

    iget v1, p0, Lo/If$ˊ;->ˎ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/If$ˊ;->ˎ:I

    iget v1, p0, Lo/If$ˊ;->ˎ:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public ˋ()Landroid/view/View;
    .locals 4

    .line 70
    iget-object v0, p0, Lo/If$ˊ;->ˊ:Landroid/view/ViewGroup;

    iget v1, p0, Lo/If$ˊ;->ˎ:I

    move v3, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/If$ˊ;->ˎ:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :goto_0
    return-object v0
.end method
