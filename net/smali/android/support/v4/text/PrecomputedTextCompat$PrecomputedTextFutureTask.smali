.class Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrecomputedTextFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<Landroid/support/v4/text/PrecomputedTextCompat;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 1

    .line 582
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;-><init>(Landroid/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 583
    return-void
.end method
