.class public Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final accessibilityDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
        }
    .end annotation
.end field

.field public final id:I

.field public final representations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
        }
    .end annotation
.end field

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IILjava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    .line 70
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 71
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 72
    if-nez p4, :cond_0

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 75
    if-nez p5, :cond_1

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_1
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 78
    return-void
.end method
