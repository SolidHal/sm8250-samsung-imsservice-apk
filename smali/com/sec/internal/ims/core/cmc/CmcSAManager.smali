.class public Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.super Ljava/lang/Object;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSAManager"


# instance fields
.field final ID_REQUEST_ACCESSTOKEN:I

.field mAppId:Ljava/lang/String;

.field mAppSecret:Ljava/lang/String;

.field mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field private mContext:Landroid/content/Context;

.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field private mIsLocal:Z

.field private mRegistrationCode:Ljava/lang/String;

.field private mSACallback:Lcom/msc/sa/aidl/ISACallback;

.field private mSAConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountMgr"    # Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "8f9l37bswj"

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppId:Ljava/lang/String;

    .line 27
    const-string v0, "5AC671E87C25F004543DEC42D8982E02"

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppSecret:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->ID_REQUEST_ACCESSTOKEN:I

    .line 35
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;
    .param p1, "x1"    # Lcom/msc/sa/aidl/ISAService;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISACallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISACallback;)Lcom/msc/sa/aidl/ISACallback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;
    .param p1, "x1"    # Lcom/msc/sa/aidl/ISACallback;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 21
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->getAccessTokenInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 21
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    return-void
.end method

.method private disconnectToSamsungAccountService()V
    .locals 2

    .line 190
    const-string v0, "CmcSAManager"

    const-string v1, "disconnectToSamsungAccountService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    return-void
.end method

.method private getAccessTokenInternal()V
    .locals 14

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppSecret:Ljava/lang/String;

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    or-int/2addr v0, v1

    const-string v1, "CmcSAManager"

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "No App Id or Secret"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_2
    :try_start_0
    const-string v0, "Try to Get Access Token"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v3, "user_id"

    const-string v4, "birthday"

    const-string v5, "email_id"

    const-string v6, "mcc"

    const-string/jumbo v7, "server_url"

    const-string v8, "cc"

    const-string v9, "api_server_url"

    const-string v10, "auth_server_url"

    const-string v11, "device_physical_address_text"

    const-string v12, "login_id "

    const-string v13, "login_id_type"

    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "additional":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "client_id"

    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 171
    const-string v4, "client_secret"

    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "curAccessToken":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "default_token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 176
    const-string v5, "expired_access_token"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_3
    const-string v5, "additional"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 180
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v5, :cond_4

    .line 181
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v5, v2, v6, v3}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 182
    const-string v2, "Request Access Token"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "additional":[Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "curAccessToken":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public connectToSamsungAccountService(Z)V
    .locals 4
    .param p1, "isLocal"    # Z

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to Samsung Account AIDL() from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSAManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isSaLogined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "connectToSamsungAccountService Not Logined"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 49
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mIsLocal:Z

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.msc.sa.service.RequestService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mSAConnection:Landroid/content/ServiceConnection;

    .line 89
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    return-void
.end method

.method public isSaLogined()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 202
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 203
    .local v1, "accountArr":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 204
    const/4 v2, 0x1

    return v2

    .line 206
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
