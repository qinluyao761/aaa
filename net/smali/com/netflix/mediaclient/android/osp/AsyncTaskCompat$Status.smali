.class public final enum Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

.field public static final enum ˋ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

.field private static final synthetic ˎ:[Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

.field public static final enum ॱ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˊ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ॱ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˋ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˊ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ॱ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˋ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˎ:[Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;
    .locals 1

    .line 83
    const-class v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;
    .locals 1

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˎ:[Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    return-object v0
.end method
