.class public Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Landroid/arch/core/internal/SafeIterableMap$SupportRemove;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorWithAdditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;Landroid/arch/core/internal/SafeIterableMap$SupportRemove<TK;TV;>;"
    }
.end annotation


# instance fields
.field private mBeforeStart:Z

.field private mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/arch/core/internal/SafeIterableMap;


# direct methods
.method private constructor <init>(Landroid/arch/core/internal/SafeIterableMap;)V
    .locals 1

    .line 301
    iput-object p1, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/core/internal/SafeIterableMap;Landroid/arch/core/internal/SafeIterableMap$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroid/arch/core/internal/SafeIterableMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroid/arch/core/internal/SafeIterableMap;

    # getter for: Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;
    invoke-static {v0}, Landroid/arch/core/internal/SafeIterableMap;->access$100(Landroid/arch/core/internal/SafeIterableMap;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 318
    :cond_1
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 301
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map$Entry<TK;TV;>;"
        }
    .end annotation

    .line 323
    iget-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 325
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroid/arch/core/internal/SafeIterableMap;

    # getter for: Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;
    invoke-static {v0}, Landroid/arch/core/internal/SafeIterableMap;->access$100(Landroid/arch/core/internal/SafeIterableMap;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_1

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 329
    :goto_1
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method public supportRemove(Landroid/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 309
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 311
    :cond_1
    return-void
.end method
