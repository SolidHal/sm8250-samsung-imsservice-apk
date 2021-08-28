.class public Lcom/verizon/loginclient/IdentityLoginClient;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;,
        Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;,
        Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;,
        Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;,
        Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;,
        Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;,
        Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;,
        Lcom/verizon/loginclient/IdentityLoginClient$TokenContentObserver;,
        Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MS:J = 0xea60L

.field private static final MSG_CONTENT_NOTIFY:I = 0x1

.field private static final MSG_TIMEOUT_EXPIRED:I = 0x2

.field public static final SUBSCRIPTION_ID_UNKNOWN:I = -0x1


# instance fields
.field private mActiveEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

.field private mAlwaysReturnSubscriptionId:Z

.field private final mAsyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

.field private mBypassDeviceFeatureCheck:Z

.field private mBypassEnginePackageCheck:Z

.field private final mContext:Landroid/content/Context;

.field private final mDirectEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

.field private mInteractiveQueryMode:Z

.field private final mLockObj:Ljava/lang/Object;

.field private final mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

.field private mObserveOnNullResult:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private final mSyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

.field private mTargetSubscriptionId:Ljava/lang/Integer;

.field private mTimeoutMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "evtRec"    # Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/verizon/loginclient/IdentityLoginClient;-><init>(Landroid/content/Context;Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;Landroid/os/Looper;Ljava/lang/Integer;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;Landroid/os/Looper;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "evtRec"    # Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "targetSubscriptionId"    # Ljava/lang/Integer;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mLockObj:Ljava/lang/Object;

    .line 83
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTimeoutMs:J

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mInteractiveQueryMode:Z

    .line 85
    iput-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassDeviceFeatureCheck:Z

    .line 86
    iput-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassEnginePackageCheck:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserveOnNullResult:Z

    .line 88
    iput-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mAlwaysReturnSubscriptionId:Z

    .line 113
    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    .line 116
    iput-object p4, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 119
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

    .line 120
    iput-object p2, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mDirectEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 121
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    invoke-direct {v1, p0, p2}, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;-><init>(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;)V

    :goto_0
    iput-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 123
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    if-eqz p3, :cond_1

    move-object v1, p3

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1, p0}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;-><init>(Landroid/os/Looper;Lcom/verizon/loginclient/IdentityLoginClient;)V

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    .line 126
    return-void

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 53
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->doIdentityQuery()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/verizon/loginclient/IdentityLoginClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 53
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 53
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;
    .param p1, "x1"    # Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    .line 53
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/IdentityLoginClient;->callbackWithResult(Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/verizon/loginclient/IdentityLoginClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 53
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->stopTimeoutWait()V

    return-void
.end method

.method static synthetic access$600(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 53
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->buildQueryParams()Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;
    .param p1, "x1"    # Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    .param p2, "x2"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginclient/IdentityLoginClient;->queryContentProvider(Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/verizon/loginclient/IdentityLoginClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 53
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->unregisterContentObserver()V

    return-void
.end method

.method private buildDeleteParams(Z)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    .locals 2
    .param p1, "deleteAll"    # Z

    .line 493
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;-><init>()V

    .line 494
    .local v0, "builder":Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->setDeleteAllTokens(Ljava/lang/Boolean;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;

    goto :goto_0

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;

    .line 497
    :goto_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    move-result-object v1

    return-object v1
.end method

.method private buildQueryParams()Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    .locals 2

    .line 482
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 483
    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;

    move-result-object v0

    .line 486
    .local v0, "builder":Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;
    iget-boolean v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mAlwaysReturnSubscriptionId:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->setAlwaysSendSubscriberId(Ljava/lang/Boolean;)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;

    .line 488
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    move-result-object v1

    return-object v1
.end method

.method private buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;

    .line 572
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 574
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mInteractiveQueryMode:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "/silent"

    .line 576
    .local v0, "suffix":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "identity"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "content://%s/%s%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "uriStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private callbackWithResult(Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)V
    .locals 4
    .param p1, "result"    # Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    .line 635
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 636
    .local v0, "callback":Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;
    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    move-object p1, v1

    .line 639
    :cond_1
    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->getResultCode()Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    move-result-object v1

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->success:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    if-ne v1, v2, :cond_2

    .line 640
    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->getIdentityData()Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;->onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->getResultCode()Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;->onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V

    .line 643
    :goto_0
    return-void
.end method

.method private doIdentityQuery()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    .locals 3

    .line 381
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->isDeviceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v1, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v0

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->buildQueryParams()Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    move-result-object v0

    iget-boolean v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserveOnNullResult:Z

    invoke-direct {p0, v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->queryContentProvider(Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private doTokenDelete(Z)V
    .locals 5
    .param p1, "allTokens"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v0

    .line 365
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/IdentityLoginClient;->buildDeleteParams(Z)Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;

    move-result-object v1

    .line 367
    .local v1, "params":Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    if-eqz v0, :cond_0

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v2

    .line 373
    :cond_0
    :goto_0
    return-void
.end method

.method private getLoginClientPackage()Ljava/lang/String;
    .locals 12

    .line 590
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 592
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 593
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 594
    .local v6, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_0

    goto :goto_2

    .line 596
    :cond_0
    sget-object v7, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_PACKAGES:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 597
    .local v10, "officalPackage":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 596
    .end local v10    # "officalPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 600
    :cond_2
    iget-boolean v7, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassEnginePackageCheck:Z

    if-eqz v7, :cond_3

    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 592
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "cpInfo":Landroid/content/pm/ProviderInfo;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 604
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLoginClientUri()Landroid/net/Uri;
    .locals 12

    .line 553
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 555
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 556
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 557
    .local v6, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_0

    goto :goto_2

    .line 559
    :cond_0
    sget-object v7, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_PACKAGES:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 560
    .local v10, "officalPackage":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v5}, Lcom/verizon/loginclient/IdentityLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 559
    .end local v10    # "officalPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 563
    :cond_2
    iget-boolean v7, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassEnginePackageCheck:Z

    if-eqz v7, :cond_3

    invoke-direct {p0, v5}, Lcom/verizon/loginclient/IdentityLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 555
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "cpInfo":Landroid/content/pm/ProviderInfo;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 567
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private isDeviceCapable()Z
    .locals 8

    .line 535
    iget-boolean v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassDeviceFeatureCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 539
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->LTE_FEATURES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 540
    .local v6, "feature":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    .line 539
    .end local v6    # "feature":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 543
    :cond_2
    return v4
.end method

.method private isRunningOnLooperThread()Z
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 614
    .local v0, "msgLooper":Landroid/os/Looper;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 616
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 617
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    return v1

    .line 619
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private processIdentityQueryResult(Landroid/database/Cursor;)Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 454
    :try_start_0
    const-string/jumbo v0, "token"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "tokenValueRaw":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v16

    .line 459
    .local v16, "token":Ljava/lang/String;
    const-string/jumbo v2, "subscriptionId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 460
    .local v2, "subIdColIndx":I
    if-lez v2, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 463
    .local v3, "subscriptionId":I
    :goto_0
    new-instance v17, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    const-string v4, "imei"

    .line 464
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "imsi"

    .line 465
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "mdn"

    .line 466
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "signature"

    .line 467
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "signatureCreate"

    .line 468
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string/jumbo v4, "signatureExpire"

    .line 469
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 470
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v4, "tid"

    .line 471
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v4, v17

    invoke-direct/range {v4 .. v16}, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Integer;JLjava/lang/String;)V

    move-object/from16 v0, v17

    .line 475
    .end local v2    # "subIdColIndx":I
    .end local v3    # "subscriptionId":I
    .end local v16    # "token":Ljava/lang/String;
    .local v0, "res":Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    goto :goto_1

    .line 455
    .local v0, "tokenValueRaw":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token value was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/verizon/loginclient/IdentityLoginClient;
    .end local p1    # "cursor":Landroid/database/Cursor;
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v0    # "tokenValueRaw":Ljava/lang/String;
    .restart local p0    # "this":Lcom/verizon/loginclient/IdentityLoginClient;
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    move-object v0, v2

    .line 477
    .local v0, "res":Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    :goto_1
    return-object v0
.end method

.method private queryContentProvider(Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    .locals 8
    .param p1, "params"    # Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;
    .param p2, "observeOnNull"    # Z

    .line 398
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v6

    .line 399
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 400
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v1, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v0

    .line 405
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .local v0, "cursor":Landroid/database/Cursor;
    nop

    .line 414
    if-nez v0, :cond_1

    .line 415
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v7, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v1

    .line 418
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 419
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 421
    if-eqz p2, :cond_2

    iget-wide v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTimeoutMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 422
    invoke-direct {p0, v6}, Lcom/verizon/loginclient/IdentityLoginClient;->registerContentObserver(Landroid/net/Uri;)V

    .line 423
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->startTimeoutWait()V

    .line 424
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v7, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v1

    .line 426
    :cond_2
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v7, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v1

    .line 430
    :cond_3
    invoke-direct {p0, v0}, Lcom/verizon/loginclient/IdentityLoginClient;->processIdentityQueryResult(Landroid/database/Cursor;)Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    move-result-object v1

    .line 431
    .local v1, "idenResult":Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 433
    if-eqz v1, :cond_4

    .line 434
    new-instance v2, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v3, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->success:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v2, v3, v1, v7, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v2

    .line 436
    :cond_4
    new-instance v2, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v3, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v2, v3, v7, v7, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v2

    .line 409
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "idenResult":Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v0, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v1

    .line 406
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "ex":Ljava/lang/SecurityException;
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v0, v7}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    return-object v1
.end method

.method private declared-synchronized registerContentObserver(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->unregisterContentObserver()V

    .line 505
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$TokenContentObserver;

    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    invoke-direct {v0, p0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$TokenContentObserver;-><init>(Lcom/verizon/loginclient/IdentityLoginClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserver:Landroid/database/ContentObserver;

    .line 506
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 502
    .end local p0    # "this":Lcom/verizon/loginclient/IdentityLoginClient;
    .end local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startTimeoutWait()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 626
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    iget-wide v2, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTimeoutMs:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 627
    return-void
.end method

.method private stopTimeoutWait()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mMsgHandler:Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->removeMessages(I)V

    .line 631
    return-void
.end method

.method private declared-synchronized unregisterContentObserver()V
    .locals 2

    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 518
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    goto :goto_0

    .line 519
    .end local p0    # "this":Lcom/verizon/loginclient/IdentityLoginClient;
    :catch_0
    move-exception v0

    .line 523
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bypassDeviceFeatureCheck(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .line 322
    iput-boolean p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassDeviceFeatureCheck:Z

    .line 323
    return-void
.end method

.method public bypassEnginePackageCheck(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .line 331
    iput-boolean p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mBypassEnginePackageCheck:Z

    .line 332
    return-void
.end method

.method public cancelQuery()V
    .locals 2

    .line 237
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->unregisterContentObserver()V

    .line 238
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->stopTimeoutWait()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 242
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mLockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->getLoginClientPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAllTokens()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/verizon/loginclient/IdentityLoginClient;->doTokenDelete(Z)V

    return-void
.end method

.method public invalidateToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/verizon/loginclient/IdentityLoginClient;->doTokenDelete(Z)V

    return-void
.end method

.method public isDozeWhitelisted()Z
    .locals 4

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 270
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->getLoginClientPackage()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 277
    .local v2, "pm":Landroid/os/PowerManager;
    if-nez v2, :cond_2

    return v1

    .line 280
    :cond_2
    invoke-virtual {v2, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public queryIdentityAsync()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    if-eqz v0, :cond_0

    .line 144
    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 147
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$1;

    invoke-direct {v0, p0}, Lcom/verizon/loginclient/IdentityLoginClient$1;-><init>(Lcom/verizon/loginclient/IdentityLoginClient;)V

    .line 156
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 157
    return-void

    .line 141
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform async query with null callback receiver (constructor)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIdentityDirect()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mDirectEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 210
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->doIdentityQuery()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryIdentitySynchronous()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    .locals 8

    .line 170
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->isRunningOnLooperThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

    iput-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 175
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    .line 178
    invoke-direct {p0}, Lcom/verizon/loginclient/IdentityLoginClient;->doIdentityQuery()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v1

    .line 180
    .local v1, "result":Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    invoke-static {v1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->access$300(Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    move-result-object v3

    sget-object v4, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    .line 184
    :try_start_1
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mLockObj:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTimeoutMs:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 185
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

    iget-object v3, v3, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-object v1, v3

    .line 186
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;

    iput-object v2, v3, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    goto :goto_0

    .line 187
    :catch_0
    move-exception v3

    .line 191
    :goto_0
    if-nez v1, :cond_0

    .line 192
    :try_start_2
    new-instance v3, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    sget-object v4, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    move-object v1, v3

    .line 194
    :cond_0
    monitor-exit v0

    .line 196
    return-object v1

    .line 194
    .end local v1    # "result":Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "synchronous query cannot be run on Handler\'s Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysRequestSubsciptionId(Z)V
    .locals 0
    .param p1, "requestSubId"    # Z

    .line 354
    iput-boolean p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mAlwaysReturnSubscriptionId:Z

    .line 355
    return-void
.end method

.method public setInteractiveQuery(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .line 312
    iput-boolean p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mInteractiveQueryMode:Z

    .line 313
    return-void
.end method

.method public setObserveOnNullResult(Z)V
    .locals 0
    .param p1, "observeOnNull"    # Z

    .line 340
    iput-boolean p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mObserveOnNullResult:Z

    return-void
.end method

.method public setTargetSubscriptionId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "subscriptionId"    # Ljava/lang/Integer;

    .line 297
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .line 304
    iput-wide p1, p0, Lcom/verizon/loginclient/IdentityLoginClient;->mTimeoutMs:J

    .line 305
    return-void
.end method
