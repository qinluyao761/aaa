.class public final Lo/ﺪ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ॱ:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;Z)Lio/reactivex/Scheduler;

    move-result-object v0

    const-string v1, "AndroidSchedulers.from(L\u2026er.getMainLooper(), true)"

    invoke-static {v0, v1}, Lo/Vb;->ॱ(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/ﺪ;->ॱ:Lio/reactivex/Scheduler;

    return-void
.end method

.method public static final ˋ()Lio/reactivex/Scheduler;
    .locals 1

    .line 17
    sget-object v0, Lo/ﺪ;->ॱ:Lio/reactivex/Scheduler;

    return-object v0
.end method
