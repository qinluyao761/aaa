.class final Lcom/google/firebase/components/zzl;
.super Lcom/google/firebase/components/zza;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/zzl$zza;
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/firebase/components/ComponentContainer;


# direct methods
.method constructor <init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/components/ComponentContainer;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/components/zza;-><init>()V

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 36
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->zzb()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/components/Dependency;

    .line 38
    invoke-virtual {v4}, Lcom/google/firebase/components/Dependency;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v4}, Lcom/google/firebase/components/Dependency;->zza()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v4}, Lcom/google/firebase/components/Dependency;->zza()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->zzd()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    const-class v0, Lcom/google/firebase/events/Publisher;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/zzl;->zza:Ljava/util/Set;

    .line 48
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/zzl;->zzb:Ljava/util/Set;

    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->zzd()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/zzl;->zzc:Ljava/util/Set;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/components/zzl;->zzd:Lcom/google/firebase/components/ComponentContainer;

    .line 51
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/firebase/components/zzl;->zza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requesting %s is not allowed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 57
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/components/zzl;->zzd:Lcom/google/firebase/components/ComponentContainer;

    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    const-class v0, Lcom/google/firebase/events/Publisher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    return-object v4

    .line 70
    :cond_1
    new-instance p1, Lcom/google/firebase/components/zzl$zza;

    iget-object v0, p0, Lcom/google/firebase/components/zzl;->zzc:Ljava/util/Set;

    move-object v1, v4

    check-cast v1, Lcom/google/firebase/events/Publisher;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/components/zzl$zza;-><init>(Ljava/util/Set;Lcom/google/firebase/events/Publisher;)V

    .line 71
    return-object p1
.end method

.method public final getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/firebase/inject/Provider<TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/firebase/components/zzl;->zzb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requesting Provider<%s> is not allowed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 78
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/components/zzl;->zzd:Lcom/google/firebase/components/ComponentContainer;

    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    return-object v0
.end method
