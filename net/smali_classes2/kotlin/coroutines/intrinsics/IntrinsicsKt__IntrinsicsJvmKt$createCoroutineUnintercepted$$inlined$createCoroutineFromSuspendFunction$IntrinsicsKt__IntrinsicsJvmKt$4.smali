.class public final Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ud;->ˎ(Lo/UH;Ljava/lang/Object;Lo/TY;)Lo/TY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private ˊ:I

.field final synthetic ˋ:Ljava/lang/Object;

.field final synthetic ˎ:Lo/TY;

.field final synthetic ˏ:Lo/UH;

.field final synthetic ॱ:Lo/Ug;


# direct methods
.method public constructor <init>(Lo/TY;Lo/Ug;Lo/TY;Lo/Ug;Lo/UH;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˎ:Lo/TY;

    iput-object p2, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ॱ:Lo/Ug;

    iput-object p5, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˏ:Lo/UH;

    iput-object p6, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˋ:Ljava/lang/Object;

    .line 180
    .line 180
    invoke-direct {p0, p3, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lo/TY;Lo/Ug;)V

    return-void
.end method


# virtual methods
.method public ˋ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 184
    iget v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˊ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˊ:I

    .line 187
    move-object v3, p1

    invoke-static {v3}, Lo/Tf;->ˋ(Ljava/lang/Object;)V

    .line 188
    move-object v4, p0

    check-cast v4, Lo/TY;

    .line 199
    iget-object v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˏ:Lo/UH;

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lo/Vi;->ˏ(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UH;

    iget-object v1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˋ:Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lo/UH;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 191
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;->ˊ:I

    .line 192
    move-object v3, p1

    invoke-static {v3}, Lo/Tf;->ˋ(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_1

    .line 194
    :goto_0
    const-string v3, "This coroutine had already completed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 184
    .line 195
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
