.class synthetic Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic ˋ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 403
    invoke-static {}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->values()[Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$3;->ˋ:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$3;->ˋ:[I

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ॱ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$3;->ˋ:[I

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ˋ:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    return-void
.end method
