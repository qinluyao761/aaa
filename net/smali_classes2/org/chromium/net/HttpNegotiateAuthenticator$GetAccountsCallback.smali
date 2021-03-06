.class Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAccountsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    }
.end annotation


# instance fields
.field private final mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

.field final synthetic this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;


# direct methods
.method public constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    .line 95
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;)V"
        }
    .end annotation

    .line 101
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 102
    :catch_0
    move-exception v8

    .line 103
    const-string v0, "net_auth"

    const-string v1, "ERR_UNEXPECTED: Error while attempting to retrieve accounts."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v3, -0x9

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    .line 105
    return-void

    .line 108
    :goto_0
    array-length v0, v7

    if-nez v0, :cond_0

    .line 109
    const-string v0, "net_auth"

    const-string v1, "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v3, -0x155

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    .line 114
    return-void

    .line 117
    :cond_0
    array-length v0, v7

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 118
    const-string v0, "net_auth"

    const-string v1, "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, v7

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 118
    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v3, -0x155

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    .line 124
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_CREDENTIALS"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "net_auth"

    const-string v1, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v3, -0x157

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    .line 136
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    iput-object v1, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    .line 139
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v0, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    iget-object v2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v2, v2, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v3, v3, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    new-instance v5, Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    iget-object v4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v6, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-direct {v5, v4, v6}, Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v6, Landroid/os/Handler;

    .line 142
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 143
    return-void
.end method
