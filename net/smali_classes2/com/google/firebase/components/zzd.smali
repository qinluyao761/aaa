.class final Lcom/google/firebase/components/zzd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/components/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lcom/google/firebase/components/zze<Landroid/content/Context;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/firebase/components/zzd;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 126
    if-nez v2, :cond_0

    .line 127
    const-string v0, "ComponentDiscovery"

    const-string v1, "Context has no PackageManager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/firebase/components/ComponentDiscoveryService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const/16 v1, 0x80

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 134
    if-nez p0, :cond_1

    .line 135
    const-string v0, "ComponentDiscovery"

    const-string v1, "ComponentDiscoveryService has no service info."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 139
    .line 140
    :catch_0
    const-string v0, "ComponentDiscovery"

    const-string v1, "Application info not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/util/List;
    .locals 6

    .line 102
    check-cast p1, Landroid/content/Context;

    .line 1106
    invoke-static {p1}, Lcom/google/firebase/components/zzd;->zza(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 1108
    if-nez p1, :cond_0

    .line 1109
    const-string v0, "ComponentDiscovery"

    const-string v1, "Could not retrieve metadata, returning empty list of registrars."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1115
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1116
    const-string v0, "com.google.firebase.components.ComponentRegistrar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.firebase.components:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    const/16 v0, 0x1f

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_1
    goto :goto_0

    .line 102
    .line 1120
    :cond_2
    return-object v2
.end method
