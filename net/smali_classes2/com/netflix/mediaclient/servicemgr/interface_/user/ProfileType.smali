.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

.field public static final enum JFK:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

.field public static final enum STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    const-string v1, "STANDARD"

    const-string v2, "standard"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    const-string v1, "JFK"

    const-string v2, "jfk"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->JFK:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->JFK:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->value:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
    .locals 6

    .line 15
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 16
    iget-object v0, v5, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    return-object v5

    .line 15
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown profile type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->value:Ljava/lang/String;

    return-object v0
.end method
