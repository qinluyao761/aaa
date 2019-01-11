.class public Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;,
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;
    }
.end annotation


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdh;


# instance fields
.field private zzbu:Landroid/app/Notification;

.field private zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private zzls:Landroid/content/ComponentName;

.field private zzlt:Landroid/content/ComponentName;

.field private zzlu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private zzlv:[I

.field private zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

.field private zzlx:J

.field private zzly:Lcom/google/android/gms/internal/cast/zzx;

.field private zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzma:Landroid/content/res/Resources;

.field private zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

.field private zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

.field private zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

.field private zzme:Lcom/google/android/gms/cast/framework/CastContext;

.field private final zzmf:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 291
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "MediaNotificationService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlu:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzh;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmf:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    return-object p1
.end method

.method private final zza(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 15

    .line 194
    move-object/from16 v4, p2

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.cast.framework.action.FORWARD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.cast.framework.action.REWIND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x6

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v8, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmj:Z

    .line 196
    move-object v6, p0

    .line 197
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    .line 198
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v9

    .line 199
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result v10

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v9

    .line 201
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbn()I

    move-result v10

    .line 202
    :goto_1
    if-eqz v8, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v11

    .line 203
    :goto_2
    if-eqz v8, :cond_3

    move v12, v10

    goto :goto_3

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbo()I

    move-result v12

    .line 204
    :goto_3
    new-instance v13, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v13, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 207
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 208
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1, v14}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 209
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 210
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 211
    return-void

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzml:Z

    move-object v6, p0

    .line 213
    const/4 v8, 0x0

    .line 214
    if-eqz v7, :cond_4

    .line 215
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 218
    :cond_4
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 219
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v1

    iget-object v2, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 220
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbp()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 222
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 223
    return-void

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmm:Z

    move-object v6, p0

    .line 225
    const/4 v8, 0x0

    .line 226
    if-eqz v7, :cond_5

    .line 227
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 230
    :cond_5
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v1

    iget-object v2, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 232
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbq()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 233
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 234
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 235
    return-void

    .line 236
    :pswitch_3
    iget-wide v7, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlx:J

    move-object v6, p0

    .line 237
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.cast.framework.action.FORWARD"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    const-string v0, "googlecast-extra_skip_step_ms"

    invoke-virtual {v9, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 240
    .line 241
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {v6, v0, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 242
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v11

    .line 243
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbr()I

    move-result v12

    .line 244
    const-wide/16 v0, 0x2710

    cmp-long v0, v7, v0

    if-nez v0, :cond_6

    .line 245
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v11

    .line 246
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbs()I

    move-result v12

    goto :goto_4

    .line 247
    :cond_6
    const-wide/16 v0, 0x7530

    cmp-long v0, v7, v0

    if-nez v0, :cond_7

    .line 248
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result v11

    .line 249
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbt()I

    move-result v12

    .line 250
    :cond_7
    :goto_4
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 251
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1, v10}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 252
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 253
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 254
    return-void

    .line 255
    :pswitch_4
    iget-wide v7, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlx:J

    move-object v6, p0

    .line 256
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.cast.framework.action.REWIND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-string v0, "googlecast-extra_skip_step_ms"

    invoke-virtual {v9, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    .line 260
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {v6, v0, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 261
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v11

    .line 262
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbu()I

    move-result v12

    .line 263
    const-wide/16 v0, 0x2710

    cmp-long v0, v7, v0

    if-nez v0, :cond_8

    .line 264
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v11

    .line 265
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbv()I

    move-result v12

    goto :goto_5

    .line 266
    :cond_8
    const-wide/16 v0, 0x7530

    cmp-long v0, v7, v0

    if-nez v0, :cond_9

    .line 267
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result v11

    .line 268
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbw()I

    move-result v12

    .line 269
    :cond_9
    :goto_5
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 270
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1, v10}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 272
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 273
    return-void

    .line 274
    :pswitch_5
    move-object v6, p0

    .line 275
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 278
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 279
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v1

    iget-object v2, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 280
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbx()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 281
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 282
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 283
    return-void

    .line 284
    :goto_6
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "Action: %s is not a pre-defined action."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_4
        -0x3855de4e -> :sswitch_1
        -0x3854c70e -> :sswitch_2
        -0x27d32f79 -> :sswitch_5
        -0x76b6783 -> :sswitch_6
        0xe0a3765 -> :sswitch_0
        0x51303e64 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final zzaz()V
    .locals 23

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 99
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    if-nez v0, :cond_1

    .line 100
    const/4 v6, 0x0

    goto :goto_0

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmo:Landroid/graphics/Bitmap;

    .line 102
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "cast_media_notification"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmk:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 112
    .line 113
    move-object/from16 v17, p0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    .line 114
    const/4 v8, 0x0

    goto :goto_1

    .line 115
    :cond_2
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 116
    const-string v0, "targetActivity"

    move-object/from16 v1, v17

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    move-object/from16 v0, v17

    const/4 v1, 0x1

    move-object/from16 v2, v18

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 119
    .line 120
    :goto_1
    if-eqz v8, :cond_3

    .line 121
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 122
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    if-eqz v0, :cond_12

    .line 123
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "mActionsProvider != null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzd;->getNotificationActions()Ljava/util/List;

    move-result-object v10

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzd;->getCompactViewActionIndices()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception v12

    .line 128
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "Unable to call %s on %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getNotificationActions"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/google/android/gms/cast/framework/media/zzd;

    .line 129
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 130
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void

    .line 132
    .line 133
    :goto_2
    move-object/from16 v17, v10

    if-eqz v10, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    :cond_4
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v1, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " doesn\'t provide any action."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v0, 0x0

    goto :goto_3

    .line 136
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    .line 137
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v1, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " provides more than 5 actions."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const/4 v0, 0x0

    goto :goto_3

    .line 139
    :cond_6
    const/4 v0, 0x1

    .line 140
    :goto_3
    if-eqz v0, :cond_c

    .line 141
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    .line 142
    .line 143
    move-object/from16 v17, v11

    if-eqz v11, :cond_7

    move-object/from16 v0, v17

    array-length v0, v0

    if-nez v0, :cond_8

    .line 144
    :cond_7
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v1, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " doesn\'t provide any actions for compact view."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_5

    .line 148
    :cond_8
    move-object/from16 v19, v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget v0, v19, v21

    .line 149
    move/from16 v22, v0

    if-ltz v0, :cond_9

    move/from16 v0, v22

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 150
    :cond_9
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v1, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    .line 151
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x0

    goto :goto_5

    .line 154
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 155
    :cond_b
    const/4 v0, 0x1

    .line 156
    :goto_5
    if-nez v0, :cond_d

    .line 157
    :cond_c
    return-void

    .line 158
    :cond_d
    invoke-virtual {v11}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [I

    .line 159
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 160
    new-instance v0, Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;-><init>()V

    .line 161
    invoke-virtual {v13}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;

    .line 162
    invoke-virtual {v13}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 163
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 164
    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 165
    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 166
    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.google.android.gms.cast.framework.action.REWIND"

    .line 167
    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 168
    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    .line 169
    :goto_7
    if-eqz v0, :cond_10

    .line 170
    invoke-virtual {v13}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v7, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    goto :goto_6

    .line 171
    :cond_10
    new-instance v14, Landroid/content/Intent;

    invoke-virtual {v13}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 174
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 175
    invoke-virtual {v13}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    move-result v1

    invoke-virtual {v13}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v15}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 176
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v16

    .line 177
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    goto/16 :goto_6

    .line 179
    :cond_11
    goto :goto_9

    .line 180
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 182
    goto :goto_8

    .line 183
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlv:[I

    .line 184
    :goto_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 185
    new-instance v0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 186
    invoke-virtual {v0, v9}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmi:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 187
    invoke-virtual {v0, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    .line 188
    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 189
    :cond_14
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbu:Landroid/app/Notification;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->isAppVisible()Z

    move-result v0

    if-nez v0, :cond_15

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbu:Landroid/app/Notification;

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 192
    :cond_15
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->stopForeground(Z)V

    .line 193
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)Landroid/app/Notification;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbu:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic zzba()Lcom/google/android/gms/internal/cast/zzdh;
    .locals 1

    .line 287
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzaz()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 9
    new-instance v0, Landroid/content/ComponentName;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Landroid/content/ComponentName;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzby()Lcom/google/android/gms/cast/framework/media/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlu:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v4

    .line 19
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlv:[I

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlv:[I

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlx:J

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 25
    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    .line 27
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzi;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->addAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmf:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    :cond_2
    move-object v5, p0

    .line 32
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    .line 34
    new-instance v7, Landroid/app/NotificationChannel;

    const-string v0, "cast_media_notification"

    const-string v1, "Cast"

    const/4 v2, 0x2

    invoke-direct {v7, v0, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 36
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 37
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v3

    .line 93
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "Unregistering trampoline BroadcastReceiver failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->removeAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    .line 96
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 20

    .line 38
    if-eqz p1, :cond_c

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 40
    const-string v0, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    move-object/from16 v11, p1

    move-object/from16 v10, p0

    .line 42
    const-string v0, "extra_media_info"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/gms/cast/MediaInfo;

    .line 43
    if-nez v12, :cond_0

    .line 44
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 45
    :cond_0
    invoke-virtual {v12}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v13

    .line 46
    if-nez v13, :cond_1

    .line 47
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 48
    :cond_1
    const-string v0, "extra_remote_media_client_player_state"

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    move v14, v0

    if-nez v0, :cond_2

    .line 51
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 52
    :cond_2
    const-string v0, "extra_cast_device"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/cast/CastDevice;

    .line 53
    if-nez v15, :cond_3

    .line 54
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 55
    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    const/4 v1, 0x2

    if-ne v14, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {v12}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v2

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 57
    invoke-virtual {v13, v3}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v15}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "extra_media_session_token"

    .line 59
    invoke-virtual {v11, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v6, "extra_can_skip_next"

    .line 60
    const/4 v7, 0x0

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "extra_can_skip_prev"

    .line 61
    const/4 v8, 0x0

    invoke-virtual {v11, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    move-object/from16 v16, v0

    .line 62
    const-string v0, "extra_media_notification_force_update"

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    if-nez v0, :cond_6

    iget-object v0, v10, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    move-object/from16 v19, v0

    move-object/from16 v18, v16

    .line 65
    if-eqz v19, :cond_5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmj:Z

    move-object/from16 v1, v19

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmj:Z

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    move-object/from16 v1, v19

    iget v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    move-object/from16 v1, v19

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 66
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmk:Ljava/lang/String;

    move-object/from16 v1, v19

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmk:Ljava/lang/String;

    .line 67
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzml:Z

    move-object/from16 v1, v19

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzml:Z

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmm:Z

    move-object/from16 v1, v19

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmm:Z

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 68
    :goto_1
    if-nez v0, :cond_7

    .line 69
    :cond_6
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    .line 70
    invoke-direct {v10}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzaz()V

    .line 71
    :cond_7
    new-instance v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    .line 72
    move-object/from16 v19, v13

    .line 73
    move-object/from16 v18, v10

    iget-object v1, v10, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v1, :cond_8

    .line 74
    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-object/from16 v2, v18

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v1

    goto :goto_2

    .line 75
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    .line 76
    :goto_2
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 77
    move-object/from16 v17, v0

    iget-object v1, v10, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    move-object/from16 v19, v1

    move-object/from16 v18, v0

    .line 78
    if-eqz v19, :cond_a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmn:Landroid/net/Uri;

    move-object/from16 v1, v19

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmn:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 79
    :goto_3
    if-nez v0, :cond_b

    .line 80
    iget-object v0, v10, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzj;

    move-object/from16 v2, v17

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/cast/framework/media/zzj;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 81
    iget-object v0, v10, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    move-object/from16 v1, v17

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmn:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    .line 82
    :cond_b
    const/4 v0, 0x1

    .line 83
    :goto_4
    if-nez v0, :cond_c

    .line 84
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->stopForeground(Z)V

    .line 85
    :cond_c
    const/4 v0, 0x1

    return v0
.end method
