.class public final enum Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/partner/PartnerInstallType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field public static final enum ˋ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field private static final synthetic ˎ:[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field public static final enum ˏ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;


# instance fields
.field private final ॱ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const-string v1, "PRELAOD"

    const-string v2, "preload"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˋ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const-string v1, "POSTLOAD"

    const-string v2, "postload"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˊ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const-string v1, "REGULAR"

    const-string v2, "regular"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˏ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˋ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˊ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˏ:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˎ:[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ॱ:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ˎ:[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object v0
.end method


# virtual methods
.method public ॱ()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->ॱ:Ljava/lang/String;

    return-object v0
.end method
