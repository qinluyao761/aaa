.class public final enum Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DismissingDialogConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum ˎ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum ˏ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field private static final synthetic ॱ:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3460
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const-string v1, "dismissOnStop"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ˊ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 3461
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const-string v1, "doNotDismissOnStop"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ˎ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 3462
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const-string v1, "doNotDismissOnStopOnce"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ˏ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 3459
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ˊ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ˎ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ˏ:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ॱ:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .line 3459
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .line 3459
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ॱ:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method
