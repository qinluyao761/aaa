.class public Lcom/google/android/gms/common/data/DataHolder$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zalp:[Ljava/lang/String;

.field private final zaly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
        }
    .end annotation
.end field

.field private final zalz:Ljava/lang/String;

.field private final zama:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field private zamb:Z

.field private zamc:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zalp:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zaly:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zalz:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zama:Ljava/util/HashMap;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zamb:Z

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zamc:Ljava/lang/String;

    .line 8
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/zab;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
