.class final Lcom/google/android/gms/measurement/internal/zzby;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaqn:Lcom/google/android/gms/measurement/internal/zzh;

.field private final synthetic zzaqo:Lcom/google/android/gms/measurement/internal/zzbv;

.field private final synthetic zzaqp:Lcom/google/android/gms/measurement/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqo:Lcom/google/android/gms/measurement/internal/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqp:Lcom/google/android/gms/measurement/internal/zzl;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqn:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqo:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzly()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqo:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqp:Lcom/google/android/gms/measurement/internal/zzl;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzby;->zzaqn:Lcom/google/android/gms/measurement/internal/zzh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 4
    return-void
.end method
