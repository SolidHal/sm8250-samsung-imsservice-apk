.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
.super Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;
.source "SoftphoneServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAirplaneModeIntentFilter:Landroid/content/IntentFilter;

.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mNetworkConnected:Z

.field private mNetworkConnectivityFilter:Landroid/content/IntentFilter;

.field private mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    .line 42
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnectivityFilter:Landroid/content/IntentFilter;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeIntentFilter:Landroid/content/IntentFilter;

    .line 46
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    .line 97
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 53
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 55
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnectivityFilter:Landroid/content/IntentFilter;

    .line 56
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "SoftphoneServiceStub(): registering mNetworkConnectivityReceiver"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeIntentFilter:Landroid/content/IntentFilter;

    .line 61
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "SoftphoneServiceStub(): registering mAirplaneModeReceiver"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->reloadAccounts()V

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->clearUnusedAddresses()V

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v1, "userSwitchIntentfilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;

    invoke-direct {v3, p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 37
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 37
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->validateTokens(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->onUserSwitched(I)V

    return-void
.end method

.method private clearUnusedAddresses()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "clearUnusedAddresses()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 92
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_id is null OR account_id =?"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method private declared-synchronized getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    .locals 4
    .param p1, "clientId"    # I

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .local v0, "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    if-eqz v0, :cond_0

    .line 268
    monitor-exit p0

    return-object v0

    .line 266
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .end local v0    # "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
    .end local p1    # "clientId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onUserSwitched(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched(): newUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    .line 153
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 154
    iput p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 157
    .local v1, "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onUserSwitch()V

    .line 159
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onUserSwitchedAway()V

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onUserSwitchedBack()V

    .line 163
    iget-boolean v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onNetworkConnected()V

    .line 155
    .end local v1    # "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private reloadAccounts()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "reloadAccounts()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildFunctionalAccountUri()Landroid/net/Uri;

    move-result-object v0

    .line 77
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActiveAccountUri()Landroid/net/Uri;

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 84
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method private updateAccountStatus(Ljava/lang/String;II)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "status"    # I

    .line 191
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 192
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private validateTokens(I)V
    .locals 22
    .param p1, "newUserId"    # I

    .line 198
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, ":"

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateTokens(): newUserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 199
    int-to-long v3, v2

    invoke-static {v3, v4}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildPendingAccountUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 200
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 201
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 202
    :try_start_0
    iget-object v5, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateTokens found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 203
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 210
    new-instance v5, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v6, "softphone"

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, "sharedPrefHelper":Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;
    const-string v6, "AES"

    invoke-static {v6}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v6

    .line 213
    .local v6, "encryptionHelper":Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    const-string v7, "account_id"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "accountId":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->updateAccountStatus(Ljava/lang/String;II)V

    .line 216
    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;

    move-result-object v8

    move-object v14, v8

    .line 217
    .local v14, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v14, :cond_1

    .line 218
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot obtain secret key for account: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 219
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_0
    return-void

    .line 222
    :cond_1
    :try_start_1
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "tguard_token"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    .line 224
    .local v15, "encodedTGaurdToken":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "tguard_appid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    .line 226
    .local v13, "encodedTGaurdAppId":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "environment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    .line 228
    .local v16, "environment":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encodedTGaurdToken "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v6, v15, v14}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    .line 231
    .local v12, "decodedTGaurdToken":Ljava/lang/String;
    invoke-virtual {v6, v13, v14}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    .line 232
    .local v11, "decodedTGaurdAppId":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodedTGaurdToken: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", decodedTGaurdAppId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 234
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    .line 235
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClientId(Ljava/lang/String;)I

    move-result v8

    move v10, v8

    .line 236
    .local v10, "clientId":I
    invoke-direct {v1, v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v8

    const/16 v17, 0x1

    .line 240
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 236
    move-object v9, v12

    move/from16 v19, v10

    .end local v10    # "clientId":I
    .local v19, "clientId":I
    move-object v10, v7

    move-object/from16 v20, v11

    .end local v11    # "decodedTGaurdAppId":Ljava/lang/String;
    .local v20, "decodedTGaurdAppId":Ljava/lang/String;
    move/from16 v11, v17

    move-object/from16 v17, v12

    .end local v12    # "decodedTGaurdToken":Ljava/lang/String;
    .local v17, "decodedTGaurdToken":Ljava/lang/String;
    move-object/from16 v12, v20

    move-object/from16 v21, v13

    .end local v13    # "encodedTGaurdAppId":Ljava/lang/String;
    .local v21, "encodedTGaurdAppId":Ljava/lang/String;
    move/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->restoreAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 234
    .end local v17    # "decodedTGaurdToken":Ljava/lang/String;
    .end local v19    # "clientId":I
    .end local v20    # "decodedTGaurdAppId":Ljava/lang/String;
    .end local v21    # "encodedTGaurdAppId":Ljava/lang/String;
    .restart local v11    # "decodedTGaurdAppId":Ljava/lang/String;
    .restart local v12    # "decodedTGaurdToken":Ljava/lang/String;
    .restart local v13    # "encodedTGaurdAppId":Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v11

    move-object/from16 v17, v12

    move-object/from16 v21, v13

    .line 242
    .end local v11    # "decodedTGaurdAppId":Ljava/lang/String;
    .end local v12    # "decodedTGaurdToken":Ljava/lang/String;
    .end local v13    # "encodedTGaurdAppId":Ljava/lang/String;
    .restart local v21    # "encodedTGaurdAppId":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 244
    .end local v5    # "sharedPrefHelper":Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;
    .end local v6    # "encryptionHelper":Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;
    .end local v7    # "accountId":Ljava/lang/String;
    .end local v14    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v15    # "encodedTGaurdToken":Ljava/lang/String;
    .end local v16    # "environment":Ljava/lang/String;
    .end local v21    # "encodedTGaurdAppId":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 200
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v5

    .line 246
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 247
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_6
    return-void
.end method


# virtual methods
.method public deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 302
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterProgressListener(I)V

    .line 303
    return-void
.end method

.method public deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 342
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSupplementaryServiceListener(I)V

    .line 343
    return-void
.end method

.method public dump(Lcom/sec/internal/log/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/sec/internal/log/IndentingPrintWriter;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/log/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->increaseIndent()V

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 253
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->decreaseIndent()V

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 257
    .local v1, "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 255
    .end local v1    # "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->close()V

    .line 261
    return-void
.end method

.method public exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "clientId"    # I
    .param p2, "authorizationCode"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I

    .line 307
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 308
    return-void
.end method

.method public getCallForwardingInfo(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 352
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo()V

    .line 353
    return-void
.end method

.method public getCallWaitingInfo(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 347
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo()V

    .line 348
    return-void
.end method

.method public declared-synchronized getClientId(Ljava/lang/String;)I
    .locals 7
    .param p1, "accountId"    # Ljava/lang/String;

    monitor-enter p0

    .line 276
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "userAccountId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 278
    .local v1, "clientId":I
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 287
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoftphoneClient-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 289
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    new-instance v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClientId(): create new client SoftphoneClient-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v2    # "ht":Landroid/os/HandlerThread;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
    :cond_0
    monitor-exit p0

    return v1

    .line 275
    .end local v0    # "userAccountId":Ljava/lang/String;
    .end local v1    # "clientId":I
    .end local p1    # "accountId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDeviceList(I)Ljava/util/List;
    .locals 1
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTermsConditions(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 367
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions()V

    .line 368
    return-void
.end method

.method public logOut(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 332
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    .line 333
    return-void
.end method

.method public provisionAccount(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 312
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount()V

    .line 313
    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 297
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V

    .line 298
    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 337
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V

    .line 338
    return-void
.end method

.method public setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 362
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V

    .line 363
    return-void
.end method

.method public setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 357
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 358
    return-void
.end method

.method public tryDeregister(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 327
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryDeregister()V

    .line 328
    return-void
.end method

.method public tryRegister(I)V
    .locals 1
    .param p1, "clientId"    # I

    .line 322
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    .line 323
    return-void
.end method

.method public validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "addressId"    # I
    .param p3, "confirmed"    # Z
    .param p4, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 317
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V

    .line 318
    return-void
.end method
