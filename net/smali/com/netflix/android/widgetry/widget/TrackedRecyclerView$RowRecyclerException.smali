.class Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowRecyclerException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 5

    .line 82
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s in %s, last layout count: %s, current count %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->ॱ(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$Adapter;Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$4;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView$RowRecyclerException;-><init>(Ljava/lang/IndexOutOfBoundsException;Ljava/lang/String;ILandroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
