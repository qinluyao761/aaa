.class Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTimeBasedFileRollOver()V
    .locals 0

    .line 35
    return-void
.end method

.method public deleteAllEvents()V
    .locals 0

    .line 24
    return-void
.end method

.method public processEvent(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V
    .locals 0

    .line 18
    return-void
.end method

.method public rollFileOver()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTimeBasedRollOverIfNeeded()V
    .locals 0

    .line 32
    return-void
.end method

.method public sendEvents()V
    .locals 0

    .line 21
    return-void
.end method

.method public setAnalyticsSettingsData(Lo/SB;Ljava/lang/String;)V
    .locals 0

    .line 15
    return-void
.end method
