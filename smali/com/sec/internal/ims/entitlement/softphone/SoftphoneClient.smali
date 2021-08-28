.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
.super Ljava/lang/Object;
.source "SoftphoneClient.java"


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenType:Ljava/lang/String;

.field private final mAccountId:Ljava/lang/String;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

.field private mEnvironment:I

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field public mHost:Ljava/lang/String;

.field protected mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

.field protected mImsManager:Lcom/sec/ims/ImsManager;

.field protected final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mIsRegisterPending:Z

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoggedOut:Z

.field protected mProfileId:I

.field private mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/vsim/attsoftphone/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRefreshIdentityIntent:Landroid/app/PendingIntent;

.field private mRefreshToken:Ljava/lang/String;

.field protected mRefreshTokenIntent:Landroid/app/PendingIntent;

.field private final mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

.field private mResendSmsIntent:Landroid/app/PendingIntent;

.field private mSecretKey:Ljavax/crypto/SecretKey;

.field protected mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

.field private final mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

.field protected mSoftphoneLabelObserver:Landroid/database/ContentObserver;

.field protected mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

.field private mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTGaurdAppId:Ljava/lang/String;

.field private mTGaurdToken:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTokenExpiresTime:J

.field private mUserHandle:Landroid/os/UserHandle;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    .line 137
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 138
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 140
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 141
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    .line 146
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-direct {v1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    .line 150
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 157
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 246
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 162
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    .line 163
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    .line 168
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 169
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 170
    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 176
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v1, "softphone"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    .line 177
    const-string v0, "AES"

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    .line 179
    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 198
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 200
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 202
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    invoke-direct {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    .line 203
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-direct {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    .line 205
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 112
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    return v0
.end method

.method private addE911Address(IIJ)V
    .locals 8
    .param p1, "addressId"    # I
    .param p2, "retryCount"    # I
    .param p3, "timeout"    # J

    .line 1238
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addE911Address(): addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddAddressRequest(I)Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;

    move-result-object v0

    .line 1242
    .local v0, "addAddressRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1244
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v2, "/softphone/v1/locations"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1245
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/4 v2, 0x0

    .line 1248
    .local v2, "request":Lorg/json/JSONObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 1250
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1251
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v4

    .line 1253
    .local v4, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not build JSONObject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1257
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1259
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, p2, p1, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 1260
    return-void
.end method

.method private addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .locals 3
    .param p1, "txn"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 1688
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_BRAND_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, "deviceModel":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCH_SCC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-att-clientId"

    invoke-virtual {p1, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string/jumbo v1, "x-att-clientVersion"

    const-string v2, "1.0"

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-att-deviceId"

    invoke-virtual {p1, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getContextInfo()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-att-contextInfo"

    invoke-virtual {p1, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    return-object p1
.end method

.method private checkAutoRegistrationCondition()V
    .locals 4

    .line 1061
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegisterWithDefaultAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    return-void

    .line 1064
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;-><init>(Landroid/content/Context;)V

    .line 1065
    .local v0, "geoFlow":Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
    const/4 v1, 0x3

    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/-$$Lambda$SoftphoneClient$mGhEsVnLU0YkoXZkKisith7_dwc;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/-$$Lambda$SoftphoneClient$mGhEsVnLU0YkoXZkKisith7_dwc;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestGeolocationUpdate(IIILcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V

    .line 1086
    return-void
.end method

.method private checkWithCondition(Ljava/util/List;Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V
    .locals 10
    .param p2, "rule"    # Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .param p3, "active"    # Z
    .param p4, "noRetryTimer"    # I
    .param p5, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
            ">;",
            "Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;",
            "ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1541
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;>;"
    iget-object v0, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mBusy:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "condition: busy"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1543
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1545
    :cond_1
    iget-object v0, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNoAnswer:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1546
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "condition: no-answer"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1547
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object v4, v0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1549
    :cond_3
    iget-object v0, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotReachable:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1550
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "condition: not-reachable"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1551
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object v4, v0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1553
    :cond_5
    iget-object v0, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotRegistered:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1554
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "condition: not-registered"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1555
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_6

    move v5, v1

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    const/4 v6, 0x0

    const/16 v8, 0x8

    move-object v4, v0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1557
    :cond_7
    iget-object v0, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mUnconditional:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1558
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "condition: unconditional"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1559
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_8

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v2

    :goto_4
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    :cond_9
    :goto_5
    return-void
.end method

.method private deregisterSoftphoneLabelObserver()V
    .locals 2

    .line 1289
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deregisterSoftphoneLabelObserver()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1292
    return-void
.end method

.method private exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V
    .locals 16
    .param p1, "authorizationCode"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "autoRegister"    # Z
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I
    .param p6, "retryCount"    # I
    .param p7, "timeout"    # J

    .line 543
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 544
    iget-object v10, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v11, v0

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 545
    if-nez v0, :cond_0

    .line 546
    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 548
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exchangeForAccessToken request: authCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", tGuardAppId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exchangeForAccessToken request: accountId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", autoRegister: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", environment: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", retryCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", timeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", mUserId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 553
    if-nez v2, :cond_1

    .line 554
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v10, "authorizationCode is null"

    invoke-virtual {v0, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 555
    return-void

    .line 558
    :cond_1
    iput-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 559
    iput-object v5, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    .line 560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 561
    .local v10, "mp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "tguard_token"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v13, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v12, v2, v13}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "tguard_appid"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v13, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v12, v5, v13}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "environment"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v11, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11, v10}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    .line 570
    invoke-direct {v1, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 572
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object v11, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    .line 573
    invoke-static {v0, v11, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildExchangeForAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/ExchangeForAccessTokenRequest;

    move-result-object v11

    .line 575
    .local v11, "exchangeForAccessTokenRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/ExchangeForAccessTokenRequest;
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    move-object v12, v0

    .line 577
    .local v12, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v0, "/oauth/v4/token"

    invoke-virtual {v12, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 578
    const-string v0, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v12, v0, v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v13, 0x0

    .line 580
    .local v13, "request":Lorg/json/JSONObject;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object v14, v0

    .line 582
    .local v14, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v14, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 583
    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Lorg/json/JSONException;
    iget-object v15, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not build JSONObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v12, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 589
    invoke-virtual {v12, v8, v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 591
    if-lez v7, :cond_2

    .line 592
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x403

    invoke-virtual {v0, v2, v7, v4, v12}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 594
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7, v4, v12}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 596
    :goto_1
    return-void
.end method

.method private findAndRemoveListener(I)Ljava/lang/Object;
    .locals 2
    .param p1, "transactionId"    # I

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 439
    return-object v0
.end method

.method private getAccountSecretKey()V
    .locals 9

    .line 1839
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1840
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "userid = ?"

    .line 1841
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    .line 1842
    .local v7, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1843
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1844
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " secretKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1845
    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 1846
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1848
    :cond_0
    return-void
.end method

.method private getCallForwardingInfo(IJ)V
    .locals 4
    .param p1, "retryCount"    # I
    .param p2, "timeout"    # J

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingInfo():retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 763
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 765
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v1, "/callHandlingFeatures/v1/communication-diversion"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 766
    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 769
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 771
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 772
    return-void
.end method

.method private getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;

    .line 820
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 822
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 823
    const-string v1, "Content-Type"

    const-string v2, "application/xcap-el+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v1, "Accept"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 828
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 830
    return-object v0
.end method

.method private getCallWaitingInfo(IJ)V
    .locals 4
    .param p1, "retryCount"    # I
    .param p2, "timeout"    # J

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 748
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 750
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v1, "/callHandlingFeatures/v1/communication-waiting"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 751
    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 754
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 756
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 757
    return-void
.end method

.method private getContextInfo()Ljava/lang/String;
    .locals 2

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1679
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mdl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const-string v1, ",os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentAddress()J
    .locals 7

    .line 1121
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1122
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1123
    .local v1, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 1124
    .local v2, "addressId":J
    if-eqz v1, :cond_1

    .line 1125
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " current addresses"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1126
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1127
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1129
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentAddress(): id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1132
    return-wide v2
.end method

.method private getDefaultAddress()J
    .locals 7

    .line 1106
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetDefaultAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1107
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1108
    .local v1, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 1109
    .local v2, "addressId":J
    if-eqz v1, :cond_1

    .line 1110
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " default addresses"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1111
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1112
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1114
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1116
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultAddress(): id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1117
    return-wide v2
.end method

.method private getTermsAndConditions(IJ)V
    .locals 4
    .param p1, "retryCount"    # I
    .param p2, "timeout"    # J

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTermsAndConditions(): retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1147
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1149
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v1, "/softphone/v1/termsAndConditions?tcType=Url"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1151
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1152
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1154
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 1155
    return-void
.end method

.method private handleImsNetworkIdentityAfterRecovery()V
    .locals 14

    .line 1861
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "impi":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1864
    .local v1, "impu":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fqdn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1866
    .local v2, "fqdn":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1876
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "Recovery: identity found. Try to relogin"

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1877
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v0, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    .line 1878
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v2

    .line 1881
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    .line 1882
    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v5, v3, v4

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 1883
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v4, 0x40d

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    goto :goto_1

    .line 1867
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "Recovery: no previous identity"

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1868
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v11, v5, v4

    const/4 v13, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 1870
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_2

    .line 1871
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sms_time"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1872
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1871
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1873
    .local v3, "milliseconds":J
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    .line 1885
    .end local v3    # "milliseconds":J
    :cond_2
    :goto_1
    return-void
.end method

.method private isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;

    .line 1041
    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1047
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mSuccess:Z

    .line 1048
    const-string v1, "Cannot retrieve account info. Please call AT&T Customer Care."

    iput-object v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mReason:Ljava/lang/String;

    .line 1050
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mReason:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1053
    .local v1, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 1055
    return v0
.end method

.method private notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .locals 5
    .param p1, "noti"    # Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "listener":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 903
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 904
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 908
    .end local v0    # "listener":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;>;"
    :cond_0
    return-void
.end method

.method private provisionAccount(IJ)V
    .locals 8
    .param p1, "retryCount"    # I
    .param p2, "timeout"    # J

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisionAccount(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildProvisionAccountRequest()Lcom/sec/internal/ims/entitlement/softphone/requests/ProvisionAccountRequest;

    move-result-object v0

    .line 607
    .local v0, "provisionAccountRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/ProvisionAccountRequest;
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 609
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v2, "/softphone/v1/account"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 610
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, "request":Lorg/json/JSONObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 615
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 616
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    goto :goto_0

    .line 617
    :catch_0
    move-exception v4

    .line 618
    .local v4, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not build JSONObject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 622
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 624
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-virtual {v4, v5, p1, v6, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 625
    return-void
.end method

.method private refreshTokenAfterRecovery()V
    .locals 5

    .line 1851
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1852
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1853
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    long-to-int v1, v3

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1854
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1855
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "attempt"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1856
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1857
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(Landroid/os/Message;)V

    .line 1858
    return-void
.end method

.method private registerSoftphoneLabelObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSoftphoneLabelObserver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1284
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1285
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1286
    return-void
.end method

.method private removeSharedPreferences()V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "removeSharedPreferences()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tguard_token"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tguard_appid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "environment"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impi"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impu"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fqdn"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "refresh_token"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pd_cookies"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sms_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private resetAccountStatus()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 475
    const-string v0, "com.samsung.softphone.action.ACCOUNT_REQUEST_LOGOUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 478
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 479
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 482
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 483
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 485
    :cond_1
    return-void
.end method

.method private resumeSmsAlarm(J)V
    .locals 16
    .param p1, "milliseconds"    # J

    .line 403
    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 404
    .local v1, "calendar":Ljava/util/Calendar;
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 405
    iget-object v4, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last sms time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0xc

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xd

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 408
    const/16 v4, 0x1e

    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 411
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "resend_sms"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v5, v15, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 415
    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    iget-object v11, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v15, v13, v14, v11}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 417
    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "schedule to send SMS at: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private retryObtainPdCookies(I)V
    .locals 1
    .param p1, "retryCount"    # I

    .line 1775
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1776
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    .line 1778
    :cond_0
    return-void
.end method

.method private revokeToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "tokenType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .line 1441
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "revokeToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revokeToken(): tokenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildRevokeTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/RevokeTokenRequest;

    move-result-object v0

    .line 1446
    .local v0, "revokeTokenRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/RevokeTokenRequest;
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1448
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v2, "/oauth/v4/revoke"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1449
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v2, 0x0

    .line 1452
    .local v2, "request":Lorg/json/JSONObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 1454
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1455
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    goto :goto_0

    .line 1456
    :catch_0
    move-exception v4

    .line 1457
    .local v4, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not build JSONObject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1461
    const-string v4, "access_token"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1462
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 1463
    :cond_0
    const-string/jumbo v4, "refresh_token"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1464
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(ILjava/lang/Object;)V

    .line 1466
    :cond_1
    :goto_1
    return-void
.end method

.method private saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "impi"    # Ljava/lang/String;
    .param p2, "impu"    # Ljava/lang/String;
    .param p3, "fqdn"    # Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v0, "mp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impi"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impu"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p2, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fqdn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, p3, v3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    .line 350
    return-void
.end method

.method private saveListener(ILjava/lang/Object;)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 434
    return-void
.end method

.method private saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "accessTokenType"    # Ljava/lang/String;
    .param p3, "expireSeconds"    # J
    .param p5, "refreshToken"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 366
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    .line 367
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 368
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->storeTokens(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method private scheduleRefreshIdentityAlarm(J)V
    .locals 6
    .param p1, "afterMillis"    # J

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "refresh_identity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 429
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh identity after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private scheduleRefreshTokenAlarm(JI)V
    .locals 6
    .param p1, "afterMillis"    # J
    .param p3, "attempt"    # I

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "refresh_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "attempt"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 379
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 380
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh token after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", attempt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private sendSMS(Ljava/lang/String;I)V
    .locals 18
    .param p1, "cookies"    # Ljava/lang/String;
    .param p2, "retryCount"    # I

    .line 1781
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "sendSMS()"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1783
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v2

    .line 1784
    .local v2, "impu":Ljava/lang/String;
    nop

    .line 1785
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1784
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSendSMSRequest(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/SendSMSRequest;

    move-result-object v4

    .line 1787
    .local v4, "sendSMSRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/SendSMSRequest;
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getHttpTransactionId()I

    move-result v5

    .line 1788
    .local v5, "transactionId":I
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1790
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget v6, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v7, "Host"

    if-ne v3, v6, :cond_0

    .line 1791
    const-string v3, "https://messagessd.att.net/messaging/v0/outbound"

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1792
    const-string v3, "messagessd.att.net"

    invoke-virtual {v0, v7, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1794
    :cond_0
    const-string v3, "https://messagessd.stage.att.net/messaging/v0/outbound"

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1795
    const-string v3, "messagessd.stage.att.net"

    invoke-virtual {v0, v7, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    :goto_0
    const-string v3, "Cookie"

    move-object/from16 v6, p1

    invoke-virtual {v0, v3, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string v3, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string v3, "Accept"

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "transactionId"

    invoke-virtual {v0, v7, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v3

    .line 1803
    .end local v0    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .local v3, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const/4 v7, 0x0

    .line 1804
    .local v7, "request":Lorg/json/JSONObject;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object v15, v0

    .line 1806
    .local v15, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v15, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1807
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1808
    .local v0, "escapedStr":Ljava/lang/String;
    const-string v8, "\\/"

    const-string v9, "/"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1809
    .local v8, "nonEscapedStr":Ljava/lang/String;
    iget-object v9, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendSMS(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setByteData([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    .end local v0    # "escapedStr":Ljava/lang/String;
    .end local v8    # "nonEscapedStr":Ljava/lang/String;
    goto :goto_1

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    .local v0, "e":Lorg/json/JSONException;
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not build JSONObject:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1816
    iget-object v8, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v9, 0x3fe

    move/from16 v13, p2

    int-to-long v11, v13

    const-wide/32 v16, 0xea60

    mul-long v16, v16, v11

    move/from16 v10, p2

    const/4 v0, -0x1

    move v11, v0

    move-object v12, v3

    move-wide/from16 v13, v16

    invoke-virtual/range {v8 .. v14}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 1817
    return-void
.end method

.method private setAddressCurrent(J)V
    .locals 4
    .param p1, "addressId"    # J

    .line 1136
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAddressCurrent(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildSetCurrentAddressUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 1138
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1139
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method private setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V
    .locals 5
    .param p1, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    .param p2, "retryCount"    # I
    .param p3, "timeout"    # J

    .line 799
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallForwardingInfo() retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 801
    const/16 v0, 0xb

    if-nez p1, :cond_0

    .line 802
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 v2, 0x0

    const-string v3, "null info"

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    move-object v0, v1

    .line 804
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 805
    return-void

    .line 808
    .end local v0    # "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallForwardingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "request":Ljava/lang/String;
    const-string v2, "/callHandlingFeatures/v1/communication-diversion"

    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v2

    .line 810
    .local v2, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    invoke-virtual {v2, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 812
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, p2, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 813
    .local v0, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 814
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "communication-diversion"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 815
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 816
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(Landroid/os/Message;)V

    .line 817
    return-void
.end method

.method private setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V
    .locals 5
    .param p1, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    .param p2, "retryCount"    # I
    .param p3, "timeout"    # J

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 779
    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 780
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 v2, 0x0

    const-string v3, "null info"

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    move-object v0, v1

    .line 781
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 782
    return-void

    .line 785
    .end local v0    # "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallWaitingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "request":Ljava/lang/String;
    const-string v2, "/callHandlingFeatures/v1/communication-waiting"

    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v2

    .line 787
    .local v2, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    invoke-virtual {v2, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 789
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, p2, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 790
    .local v0, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 791
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "communication-waiting"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 792
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 793
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(Landroid/os/Message;)V

    .line 794
    return-void
.end method

.method private setupEnvironment(I)V
    .locals 3
    .param p1, "environment"    # I

    .line 443
    iput p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    .line 444
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->setupAppKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    .line 445
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->setupAppSecret(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    .line 446
    const-string v0, "api.att.com"

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupEnvironment(): appKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appSecret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private storeTokens(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "tokenType"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 354
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "access_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v2, "token_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "refresh_token"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 358
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private tokenExist()Z
    .locals 6

    .line 1829
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1830
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tokenExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1832
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1834
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "sharedPrefHelper is null"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1835
    return v1
.end method

.method private tryRegisterWithDefaultAddress()Z
    .locals 6

    .line 1089
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCurrentAddress()J

    move-result-wide v0

    .line 1090
    .local v0, "addressId":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    .line 1092
    return v5

    .line 1094
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getDefaultAddress()J

    move-result-wide v0

    .line 1095
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1096
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setAddressCurrent(J)V

    .line 1097
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    .line 1098
    return v5

    .line 1100
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "impi"    # Ljava/lang/String;
    .param p2, "impu"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 334
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "impi"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "@"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "msisdn":Ljava/lang/String;
    const-string v3, "msisdn"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "secret_key"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "environment"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method private updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "addressId"    # I
    .param p2, "addressIdentifier"    # Ljava/lang/String;
    .param p3, "expireDate"    # Ljava/lang/String;

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "updateE911AddressLocally()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1227
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 1229
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1230
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const-string v3, "account_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v2, "E911AID"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v2, "expire_date"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1235
    return-void
.end method

.method private validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V
    .locals 9
    .param p1, "addressId"    # I
    .param p2, "confirmed"    # Z
    .param p3, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    .param p4, "retryCount"    # I
    .param p5, "timeout"    # J

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateE911Address(): addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", confirmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddressValidationRequest(IZ)Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;

    move-result-object v0

    .line 637
    .local v0, "addressValidationRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getHttpTransactionId()I

    move-result v1

    .line 638
    .local v1, "transactionId":I
    if-eqz p3, :cond_0

    .line 639
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveListener(ILjava/lang/Object;)V

    .line 641
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 643
    .local v2, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v3, "/emergencyServices/v1/e911Locations"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 644
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v3, 0x0

    .line 647
    .local v3, "request":Lorg/json/JSONObject;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 649
    .local v4, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 650
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    goto :goto_0

    .line 651
    :catch_0
    move-exception v5

    .line 652
    .local v5, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not build JSONObject:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v5, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 656
    invoke-virtual {v2, p5, p6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 658
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v1, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 659
    .local v5, "msg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v6, "data":Landroid/os/Bundle;
    const-string/jumbo v7, "retry_count"

    invoke-virtual {v6, v7, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    const-string v7, "confirmed"

    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 662
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 663
    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(Landroid/os/Message;)V

    .line 664
    return-void
.end method


# virtual methods
.method public broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "msisdn"    # Ljava/lang/String;

    .line 953
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    if-eqz p2, :cond_0

    .line 956
    const-string v1, "msisdn"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntent: extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 961
    return-void
.end method

.method public deregisterProgressListener(I)V
    .locals 2
    .param p1, "callerUid"    # I

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-void
.end method

.method public deregisterSupplementaryServiceListener(I)V
    .locals 2
    .param p1, "callerUid"    # I

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method public dump(Lcom/sec/internal/log/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/sec/internal/log/IndentingPrintWriter;

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/log/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->increaseIndent()V

    .line 879
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 880
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->decreaseIndent()V

    .line 881
    return-void
.end method

.method public exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 11
    .param p1, "authorizationCode"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "autoRegister"    # Z
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I

    .line 531
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v1, 0x0

    aget-wide v9, v0, v1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    .line 532
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "finalize()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 226
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 227
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenType()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoRetryComSet(ZZ)Z
    .locals 1
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public getCallForwardingInfo()V
    .locals 4

    .line 759
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void
.end method

.method public getCallWaitingInfo()V
    .locals 4

    .line 744
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/DeviceInfo;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 836
    .local v1, "reg":[Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 837
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getDeviceList()Ljava/util/List;

    move-result-object v2

    .line 838
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reg.deviceList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 839
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    .line 840
    .local v4, "na":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "displayName":Ljava/lang/String;
    const-string v6, ""

    .line 842
    .local v6, "deviceId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 843
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v7, :cond_0

    .line 844
    const-string v8, "gr"

    invoke-virtual {v7, v8}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 845
    if-nez v6, :cond_0

    .line 846
    const-string v6, ""

    .line 849
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 850
    new-instance v8, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "D;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";Smartphone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 852
    :cond_1
    new-instance v8, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    invoke-direct {v8, v5, v6}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    .end local v4    # "na":Lcom/sec/ims/util/NameAddr;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_1
    goto :goto_0

    .line 856
    .end local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceList(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 857
    return-object v0
.end method

.method public getImsNetworkIdentifiers(ZZIJI)V
    .locals 8
    .param p1, "justProvisioned"    # Z
    .param p2, "autoRegister"    # Z
    .param p3, "retryCount"    # I
    .param p4, "timeout"    # J
    .param p6, "attempt"    # I

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsNetworkIdentifiers(): justProvisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 921
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 923
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v1, "/softphone/v1/identities?SoftphoneType:sip"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 927
    invoke-virtual {v0, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 929
    const-string v1, "attempt"

    if-eqz p1, :cond_0

    .line 930
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, p2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 931
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 932
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {v3, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 935
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 936
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3, p2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 938
    .restart local v2    # "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 939
    .restart local v3    # "data":Landroid/os/Bundle;
    invoke-virtual {v3, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 940
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 942
    if-lez p6, :cond_1

    .line 943
    const-wide/16 v4, 0x1

    shl-long/2addr v4, p6

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    .line 944
    .local v4, "expBackoff":J
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SoftphoneEvents(): backoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 946
    .end local v4    # "expBackoff":J
    goto :goto_0

    .line 947
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(Landroid/os/Message;)V

    .line 950
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "data":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public getProfileId()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    return v0
.end method

.method public getTermsAndConditions()V
    .locals 4

    .line 1142
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void
.end method

.method public getUserId()I
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 862
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    return v0
.end method

.method public handleDeRegisterRequest()V
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeRegisterRequest(): mProfileId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1321
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsManager;->deregisterAdhocProfile(I)V

    .line 1323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 1325
    :cond_0
    return-void
.end method

.method public handleLabelUpdated()V
    .locals 2

    .line 1328
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "handleLabelUpdated()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 1330
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->deferMessage(Landroid/os/Message;)V

    .line 1331
    return-void
.end method

.method public handleTryRegisterRequest()V
    .locals 4

    .line 1297
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "There is an ongoing profile registration."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1299
    return-void

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->createProfileFromTemplate(Landroid/content/Context;Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;Ljava/lang/String;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1303
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1304
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    .line 1305
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    .line 1307
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Register is pending because ImsService is not connected"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 1310
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    .line 1312
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injected profile ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_1

    .line 1314
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "fail to build profile"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1315
    const-string v2, "Fail to build profile."

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyRegisterStatus(ZLjava/lang/String;)V

    .line 1317
    :goto_1
    return-void
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 4
    .param p1, "impi"    # Ljava/lang/String;

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "isTarget":Z
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v0, 0x1

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTarget(): impi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return v0
.end method

.method public synthetic lambda$checkAutoRegistrationCondition$0$SoftphoneClient(Landroid/location/Address;)V
    .locals 5
    .param p1, "address"    # Landroid/location/Address;

    .line 1067
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1068
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "countryCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAddressObtained(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1070
    const-string v2, "US"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    const-string v2, "VI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1072
    const-string v2, "PR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    .line 1078
    const-string v2, "com.samsung.softphone.action.ACCOUNT_IN_INTERNATIONAL"

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1074
    :cond_1
    :goto_0
    const-string v2, "com.samsung.softphone.action.ACCOUNT_MISSING_E911"

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .end local v1    # "countryCode":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1081
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "onAddressObtained(): cannot determine location"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1083
    const-string v1, "com.samsung.softphone.action.ACCOUNT_LOCATION_UNKNOWN"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :goto_2
    return-void
.end method

.method public logOut()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "logOut()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 682
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 683
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 685
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 691
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 693
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 694
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->removeSharedPreferences()V

    .line 695
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x3fa

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 697
    return-void
.end method

.method public notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    .locals 5
    .param p1, "noti"    # Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    .line 887
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "listener":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sec/vsim/attsoftphone/IProgressListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 891
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/IProgressListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/IProgressListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 896
    .end local v0    # "listener":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sec/vsim/attsoftphone/IProgressListener;>;"
    :cond_0
    return-void
.end method

.method public notifyRegisterStatus(ZLjava/lang/String;)V
    .locals 3
    .param p1, "registered"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegisterStatus(): registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 913
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 914
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 915
    return-void
.end method

.method public obtainPdCookies(I)V
    .locals 10
    .param p1, "retryCount"    # I

    .line 1697
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainPdCookies(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1700
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v2, "Host"

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 1701
    const-string v1, "https://tprodsmsx.att.net/commonLogin/nxsEDAM/controller.do"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1702
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    .line 1704
    const-string/jumbo v1, "tprodsmsx.att.net"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1706
    :cond_0
    const-string v1, "https://tstagesms.stage.att.net/commonLogin/nxsEDAM/controller.do"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1707
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.stage.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    .line 1709
    const-string/jumbo v1, "tstagesms.stage.att.net"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :goto_0
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v0

    .line 1715
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1716
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v4, 0x3fc

    const/4 v6, -0x1

    int-to-long v1, p1

    const-wide/32 v7, 0xea60

    mul-long v8, v1, v7

    move v5, p1

    move-object v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 1717
    return-void
.end method

.method public onAirplaneModeOn()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAirplaneModeOn()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 868
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x407

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 869
    return-void
.end method

.method public onNetworkConnected()V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onNetworkConnected()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x408

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 874
    return-void
.end method

.method public onRequestAkaChallenge(Ljava/lang/String;I)V
    .locals 7
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "retryCount"    # I

    .line 1720
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1721
    .local v0, "timeout":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestAkaChallenge : nonce = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, "randAutn":[Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1725
    .local v3, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v4, "/softphone/v1/challengeKeys"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1726
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string/jumbo v5, "randomChallenge"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string v5, "networkAuthenticatorToken"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1729
    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1731
    const/4 v4, 0x0

    const/16 v5, 0x13

    const/4 v6, -0x1

    invoke-static {v4, v5, p2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1732
    .local v4, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1733
    .local v5, "data":Landroid/os/Bundle;
    const-string v6, "nonce"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1735
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(Landroid/os/Message;)V

    .line 1736
    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitch()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 742
    return-void
.end method

.method public onUserSwitchedAway()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitchedAway()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 287
    return-void
.end method

.method public onUserSwitchedBack()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitchedBack()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 293
    return-void
.end method

.method public processAddE911AddressResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;II)V
    .locals 4
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;
    .param p2, "retryCount"    # I
    .param p3, "addressId"    # I

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAddAddressResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1266
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mLocationResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse$LocationResponse;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse$LocationResponse;->mLocations:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1269
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1270
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1271
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1272
    .local v0, "timeout":J
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    .line 1273
    return-void

    .line 1277
    .end local v0    # "timeout":J
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v1, 0x7

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1278
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 1279
    return-void
.end method

.method public processAkaChallengeResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V
    .locals 4
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;
    .param p2, "retryCount"    # I
    .param p3, "nonce"    # Ljava/lang/String;

    .line 1654
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAkaChallengeResponse(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneAuthUtils;->processAkaAuthenticationResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;)Ljava/lang/String;

    move-result-object v0

    .line 1657
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aka failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    .line 1660
    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onRequestAkaChallenge(Ljava/lang/String;I)V

    .line 1661
    return-void

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "aka failed over 3 times, deregister..."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1666
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1669
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Sending AKA response Intent to SimManager"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1671
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1673
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1675
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public processExchangeForAccessTokenResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;IZ)V
    .locals 12
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;
    .param p2, "retryCount"    # I
    .param p3, "autoRegister"    # Z

    .line 1888
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processExchangeForAccessTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1890
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 1892
    iget-object v4, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1893
    iget-wide v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v4, 0x384

    mul-long/2addr v2, v4

    .line 1894
    .local v2, "afterMillis":J
    invoke-direct {p0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1895
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v4, 0x40b

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 1897
    const/4 v6, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v9, v0, v1

    const/4 v11, 0x0

    move-object v5, p0

    move v7, p3

    invoke-virtual/range {v5 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 1898
    if-nez p3, :cond_0

    .line 1899
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleSmsAlarm()V

    .line 1900
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    goto :goto_0

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sms_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1905
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1904
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1906
    .local v4, "milliseconds":J
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    .line 1909
    .end local v2    # "afterMillis":J
    .end local v4    # "milliseconds":J
    :cond_1
    :goto_0
    goto :goto_1

    .line 1910
    :cond_2
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 1911
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    .line 1912
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v0, v0, p2

    .line 1913
    .local v0, "timeout":J
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v3, p0

    move v6, p3

    move v9, p2

    move-wide v10, v0

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    .line 1914
    return-void

    .line 1917
    .end local v0    # "timeout":J
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 1918
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x40c

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 1921
    :goto_1
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1922
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 1923
    return-void
.end method

.method public processGetCallForwardingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;I)V
    .locals 24
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;
    .param p2, "retryCount"    # I

    .line 1565
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processGetCallForwardingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1567
    iget-boolean v0, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mSuccess:Z

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, 0x3

    if-eqz v0, :cond_c

    .line 1568
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1569
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1570
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num of rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1572
    .local v13, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;>;"
    iget-object v0, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 1573
    .local v14, "active":Z
    iget-object v0, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1575
    .local v21, "noRetryTimer":I
    const-string v0, ""

    .line 1576
    .local v0, "number":Ljava/lang/String;
    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;

    .line 1577
    .local v15, "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    iget-object v1, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ruleId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1578
    iget-object v1, v15, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mActions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;->mForwardTo:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;->mTarget:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1579
    .local v5, "target":[Ljava/lang/String;
    array-length v1, v5

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v4, v5, v1

    .line 1580
    .end local v0    # "number":Ljava/lang/String;
    .local v4, "number":Ljava/lang/String;
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1581
    iget-object v0, v15, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x4

    const/4 v12, 0x2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v1, "call-diversion-not-reachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_2

    :sswitch_1
    const-string v1, "call-diversion-busy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string v1, "call-diversion-not-logged-in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_2

    :sswitch_3
    const-string v1, "call-diversion-unconditional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_4
    const-string v1, "call-diversion-no-reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_2

    :goto_1
    move v0, v10

    :goto_2
    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_7

    if-eq v0, v12, :cond_5

    if-eq v0, v11, :cond_3

    if-eq v0, v3, :cond_1

    .line 1603
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ruleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move v3, v14

    move-object v12, v4

    .end local v4    # "number":Ljava/lang/String;
    .local v12, "number":Ljava/lang/String;
    move/from16 v4, v21

    move-object/from16 v23, v5

    .end local v5    # "target":[Ljava/lang/String;
    .local v23, "target":[Ljava/lang/String;
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkWithCondition(Ljava/util/List;Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V

    goto/16 :goto_8

    .line 1599
    .end local v12    # "number":Ljava/lang/String;
    .end local v23    # "target":[Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "target":[Ljava/lang/String;
    :cond_1
    move-object v12, v4

    move-object/from16 v23, v5

    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "target":[Ljava/lang/String;
    .restart local v12    # "number":Ljava/lang/String;
    .restart local v23    # "target":[Ljava/lang/String;
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v15, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_2

    move/from16 v16, v2

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    const/16 v17, 0x0

    const/16 v19, 0x8

    move-object v1, v15

    .end local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .local v1, "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    goto/16 :goto_8

    .line 1595
    .end local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .end local v12    # "number":Ljava/lang/String;
    .end local v23    # "target":[Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "target":[Ljava/lang/String;
    .restart local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    :cond_3
    move-object v12, v4

    move-object/from16 v23, v5

    move-object v1, v15

    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "target":[Ljava/lang/String;
    .end local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v12    # "number":Ljava/lang/String;
    .restart local v23    # "target":[Ljava/lang/String;
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_4

    move/from16 v16, v2

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    const/16 v17, 0x0

    const/16 v19, 0x3

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    goto/16 :goto_8

    .line 1591
    .end local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .end local v12    # "number":Ljava/lang/String;
    .end local v23    # "target":[Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "target":[Ljava/lang/String;
    .restart local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    :cond_5
    move-object v12, v4

    move-object/from16 v23, v5

    move-object v1, v15

    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "target":[Ljava/lang/String;
    .end local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v12    # "number":Ljava/lang/String;
    .restart local v23    # "target":[Ljava/lang/String;
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_6

    move/from16 v16, v2

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    const/16 v19, 0x2

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    goto :goto_8

    .line 1587
    .end local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .end local v12    # "number":Ljava/lang/String;
    .end local v23    # "target":[Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "target":[Ljava/lang/String;
    .restart local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    :cond_7
    move-object v12, v4

    move-object/from16 v23, v5

    move-object v1, v15

    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "target":[Ljava/lang/String;
    .end local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v12    # "number":Ljava/lang/String;
    .restart local v23    # "target":[Ljava/lang/String;
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_8

    move/from16 v16, v2

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    :goto_6
    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    goto :goto_8

    .line 1583
    .end local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .end local v12    # "number":Ljava/lang/String;
    .end local v23    # "target":[Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "target":[Ljava/lang/String;
    .restart local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    :cond_9
    move-object v12, v4

    move-object/from16 v23, v5

    move-object v1, v15

    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "target":[Ljava/lang/String;
    .end local v15    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    .restart local v12    # "number":Ljava/lang/String;
    .restart local v23    # "target":[Ljava/lang/String;
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v3, :cond_a

    move/from16 v16, v2

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    :goto_7
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    nop

    .line 1607
    .end local v1    # "rule":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
    :goto_8
    move-object v0, v12

    goto/16 :goto_0

    .line 1608
    .end local v12    # "number":Ljava/lang/String;
    .end local v23    # "target":[Ljava/lang/String;
    .restart local v0    # "number":Ljava/lang/String;
    :cond_b
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v2, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mSuccess:Z

    iget-object v3, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mReason:Ljava/lang/String;

    invoke-direct {v1, v9, v2, v3, v13}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Ljava/util/List;)V

    .line 1610
    .local v1, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {v6, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 1611
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    .end local v13    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;>;"
    .end local v14    # "active":Z
    .end local v21    # "noRetryTimer":I
    move v0, v8

    goto :goto_9

    .line 1612
    :cond_c
    iget v0, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mStatusCode:I

    if-ne v0, v10, :cond_d

    .line 1613
    add-int/lit8 v0, v8, 0x1

    .end local p2    # "retryCount":I
    .local v0, "retryCount":I
    if-ge v0, v11, :cond_e

    .line 1614
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v1, v1, v0

    .line 1615
    .local v1, "timeout":J
    invoke-direct {v6, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    .line 1616
    return-void

    .line 1612
    .end local v0    # "retryCount":I
    .end local v1    # "timeout":J
    .restart local p2    # "retryCount":I
    :cond_d
    move v0, v8

    .line 1619
    .end local p2    # "retryCount":I
    .restart local v0    # "retryCount":I
    :cond_e
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-object v2, v7, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;->mReason:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v3, v2}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1620
    .local v1, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {v6, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 1622
    .end local v1    # "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cddf879 -> :sswitch_4
        -0x45b7dfbc -> :sswitch_3
        -0xd706b33 -> :sswitch_2
        0x66b7622 -> :sswitch_1
        0x194f58ca -> :sswitch_0
    .end sparse-switch
.end method

.method public processGetCallWaitingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;I)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;
    .param p2, "retryCount"    # I

    .line 1519
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processGetCallWaitingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1521
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mSuccess:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1523
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mReason:Ljava/lang/String;

    new-instance v4, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-object v5, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    .line 1524
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v4, v5}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 1525
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 1526
    .end local v0    # "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    goto :goto_0

    .line 1527
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1528
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1529
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1530
    .local v0, "timeout":J
    invoke-direct {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    .line 1531
    return-void

    .line 1534
    .end local v0    # "timeout":J
    :cond_1
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1535
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 1537
    .end local v0    # "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    :goto_0
    return-void
.end method

.method public processImsNetworkIdentifiersResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V
    .locals 15
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;
    .param p2, "justProvisioned"    # Z
    .param p3, "retryCount"    # I
    .param p4, "autoRegister"    # Z
    .param p5, "attempt"    # I

    .line 965
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v0, p3

    move/from16 v10, p4

    move/from16 v11, p5

    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImsNetworkIdentifiersResponse(): success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", justProvisioned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", autoRegister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", attempt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 968
    iget-boolean v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mSuccess:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object v5, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    iget-object v6, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    .line 971
    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 972
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    iget-object v5, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v6, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v6, v6, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v6, v6, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    new-array v13, v4, [Ljava/lang/String;

    iget-object v14, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v14, v14, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v14, v14, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    aput-object v14, v13, v3

    .line 974
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v12, v13}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    .line 976
    const-wide/32 v5, 0xa4cb80

    .line 977
    .local v5, "afterMillis":J
    invoke-direct {p0, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshIdentityAlarm(J)V

    .line 979
    iget-object v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v12, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v12, v12, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v12, v12, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    invoke-direct {p0, v1, v12}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v12, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v12, v12, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v12, v12, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    iget-object v13, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v13, v13, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v13, v13, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    invoke-direct {p0, v1, v12, v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    iget-object v12, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v12, v12, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v12, v12, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    .line 986
    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v4, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    .line 987
    const-string v13, "@"

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 985
    invoke-virtual {v1, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "msisdn":Ljava/lang/String;
    const-string v4, "com.samsung.softphone.action.ACCOUNT_LOGIN_COMPLETED"

    invoke-virtual {p0, v4, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v4, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v12, 0x40e

    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 990
    if-eqz v10, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkAutoRegistrationCondition()V

    .line 993
    :cond_0
    iget-object v4, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 994
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v5    # "afterMillis":J
    move v12, v0

    goto/16 :goto_0

    .line 995
    :cond_1
    iget v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mStatusCode:I

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-ne v1, v5, :cond_2

    .line 996
    add-int/lit8 v12, v0, 0x1

    .end local p3    # "retryCount":I
    .local v12, "retryCount":I
    if-ge v12, v6, :cond_3

    .line 997
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v13, v0, v12

    .line 998
    .local v13, "timeout":J
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move v3, v12

    move-wide v4, v13

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 999
    return-void

    .line 995
    .end local v12    # "retryCount":I
    .end local v13    # "timeout":J
    .restart local p3    # "retryCount":I
    :cond_2
    move v12, v0

    .line 1003
    .end local p3    # "retryCount":I
    .restart local v12    # "retryCount":I
    :cond_3
    if-eqz v9, :cond_5

    .line 1004
    add-int/lit8 v0, v11, 0x1

    .end local p5    # "attempt":I
    .local v0, "attempt":I
    if-ge v0, v6, :cond_4

    .line 1005
    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessageDelayed(IIJ)V

    .line 1006
    return-void

    .line 1008
    :cond_4
    const-string v1, "Please try again later or call AT&T Customer Care."

    iput-object v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mReason:Ljava/lang/String;

    .line 1009
    iget-object v1, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "processImsNetworkIdentifiersResponse(): notify getImsNetworkIdentity failure after 3 attempts"

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    move v11, v0

    goto :goto_0

    .line 1012
    .end local v0    # "attempt":I
    .restart local p5    # "attempt":I
    :cond_5
    iget-object v0, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mReason:Ljava/lang/String;

    const-string v1, "LDAP Record not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1013
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions()V

    .line 1015
    return-void

    .line 1016
    :cond_6
    if-eqz v10, :cond_9

    .line 1019
    iget v0, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mStatusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_7

    .line 1020
    iget-object v0, v7, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processImsNetworkIdentifiersResponse(): statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", invalid access token, reLogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    .line 1023
    return-void

    .line 1025
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .end local p5    # "attempt":I
    .local v11, "attempt":I
    const/4 v0, 0x6

    if-ge v11, v0, :cond_8

    .line 1026
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v5, v0, v3

    move-object v0, p0

    move/from16 v2, p4

    move v3, v4

    move-wide v4, v5

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 1027
    return-void

    .line 1029
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    .line 1036
    :cond_9
    :goto_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v1, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mSuccess:Z

    iget-object v3, v8, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1037
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 1038
    return-void
.end method

.method public processObtainPdCookiesResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)V
    .locals 11
    .param p1, "response"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "retryCount"    # I

    .line 1739
    if-eqz p1, :cond_6

    .line 1740
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 1741
    .local v0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_5

    .line 1742
    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1743
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1744
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1745
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1746
    .local v5, "cookie":Ljava/lang/String;
    const-string v6, "[;,]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1747
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 1748
    .local v9, "part":Ljava/lang/String;
    const-string v10, "PD-ID="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "PD-H-SESSION-ID"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1749
    :cond_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    const-string v10, ";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    .end local v9    # "part":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1753
    .end local v5    # "cookie":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1755
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1756
    .local v4, "pdCookies":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v6, "processObtainPdCookiesResponse()"

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1757
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processObtainPdCookiesResponse(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1759
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pd_cookies"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    .line 1760
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v8

    .line 1759
    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    goto :goto_2

    .line 1764
    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    .line 1766
    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "pdCookies":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1767
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    .line 1769
    .end local v0    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_3
    goto :goto_4

    .line 1770
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    .line 1772
    :goto_4
    return-void
.end method

.method public processProvisionAccountResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;I)V
    .locals 6
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .param p2, "retryCount"    # I

    .line 1175
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processProvisionAccountResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1176
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-wide/32 v4, 0xafc8

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessageDelayed(IIJ)V

    goto :goto_0

    .line 1179
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1180
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_1

    .line 1181
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    aget-wide v0, v0, p2

    .line 1182
    .local v0, "timeout":J
    invoke-direct {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    .line 1183
    return-void

    .line 1187
    .end local v0    # "timeout":J
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1188
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 1189
    return-void
.end method

.method public processRefreshTokenResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;III)V
    .locals 8
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;
    .param p2, "statusCode"    # I
    .param p3, "retryCount"    # I
    .param p4, "attempt"    # I

    .line 1484
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRefreshTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1487
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1488
    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1489
    iget-wide v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v4, 0x384

    mul-long/2addr v2, v4

    .line 1490
    .local v2, "afterMillis":J
    invoke-direct {p0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1491
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleImsNetworkIdentityAfterRecovery()V

    .line 1494
    .end local v2    # "afterMillis":J
    :cond_0
    goto :goto_0

    .line 1495
    :cond_1
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;->mStatusCode:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ne v0, v2, :cond_2

    .line 1496
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v3, :cond_2

    .line 1497
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v0, v0, p3

    .line 1498
    .local v0, "timeout":J
    invoke-virtual {p0, p3, v0, v1, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshToken(IJI)V

    .line 1499
    return-void

    .line 1502
    .end local v0    # "timeout":J
    :cond_2
    const/16 v0, 0x191

    const-string/jumbo v2, "processRefreshTokenResponse(): statusCode: "

    const/4 v4, 0x1

    if-ne p2, v0, :cond_3

    .line 1503
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", invalid access token, reLogin"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_0

    .line 1506
    :cond_3
    add-int/lit8 p4, p4, 0x1

    if-gt p4, v3, :cond_4

    .line 1507
    iget-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    .line 1508
    .local v0, "afterMillis":J
    invoke-direct {p0, v0, v1, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1509
    .end local v0    # "afterMillis":J
    goto :goto_0

    .line 1510
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unable to refresh token, try reLogin"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    .line 1516
    :goto_0
    return-void
.end method

.method public processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;I)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .param p2, "retryCount"    # I

    .line 1373
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processReleaseImsNetworkIdentitiesResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1375
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->clear()V

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "impi"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fqdn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1384
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_1

    .line 1385
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1386
    .local v0, "timeout":J
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 1387
    return-void

    .line 1390
    .end local v0    # "timeout":J
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to ReleaseImsNetworkIdentities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1393
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 1394
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 1399
    return-void
.end method

.method public processRevokeAccessTokenResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 1412
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRevokeAccessTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1414
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 1416
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    .line 1417
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    goto :goto_0

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to RevokeAccessToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1422
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    const-string/jumbo v1, "refresh_token"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    return-void
.end method

.method public processRevokeRefreshTokenResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 1426
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRevokeRefreshTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1428
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    goto :goto_0

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to RevokeRefreshToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1437
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x40c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 1438
    return-void
.end method

.method public processSendSMSResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;I)V
    .locals 5
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .param p2, "retryCount"    # I

    .line 1820
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSendSMSResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1822
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pd_cookies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, "encodedCookies":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    .line 1826
    .end local v0    # "encodedCookies":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public processSetCallForwardingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 4
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .param p2, "retryCount"    # I
    .param p3, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 1640
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSetCallForwardingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1641
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1642
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1643
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, v0, p2

    .line 1644
    .local v0, "timeout":J
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    .line 1645
    return-void

    .line 1648
    .end local v0    # "timeout":J
    :cond_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/16 v1, 0xb

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1650
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 1651
    return-void
.end method

.method public processSetCallWaitingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 4
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .param p2, "retryCount"    # I
    .param p3, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 1625
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSetCallWaitingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1626
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1627
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1628
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, v0, p2

    .line 1629
    .local v0, "timeout":J
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    .line 1630
    return-void

    .line 1633
    .end local v0    # "timeout":J
    :cond_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/16 v1, 0xa

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1636
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    .line 1637
    return-void
.end method

.method public processTermsAndConditionsResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;I)V
    .locals 4
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;
    .param p2, "retryCount"    # I

    .line 1158
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTermsAndConditionsResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1159
    iget-boolean v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mTCResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse$TCResponse;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse$TCResponse;->mUrl:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mReason:Ljava/lang/String;

    goto :goto_0

    .line 1162
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1163
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1164
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1165
    .local v0, "timeout":J
    invoke-direct {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    .line 1166
    return-void

    .line 1170
    .end local v0    # "timeout":J
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v1, 0x2

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1171
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 1172
    return-void
.end method

.method public processValidateE911AddressResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;I)V
    .locals 11
    .param p1, "response"    # Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;
    .param p2, "retryCount"    # I

    .line 1192
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAddressValidationResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1194
    const/4 v0, 0x0

    .line 1195
    .local v0, "confirmationRequired":Z
    iget-boolean v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 1196
    iget v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-object v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mE911Locations:Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse$E911Locations;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse$E911Locations;->mAddressIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mE911Locations:Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse$E911Locations;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse$E911Locations;->mExpirationDate:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mAddressId:I

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    move v6, v0

    goto :goto_0

    .line 1199
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1200
    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x3

    if-ge p2, v1, :cond_1

    .line 1201
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v1, v1, p2

    .line 1202
    .local v1, "timeout":J
    iget v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 1203
    .local v10, "listener":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    iget v4, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-boolean v5, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mConfirmed:Z

    move-object v3, p0

    move-object v6, v10

    move v7, p2

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    .line 1204
    return-void

    .line 1207
    .end local v1    # "timeout":J
    .end local v10    # "listener":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mReason:Ljava/lang/String;

    const-string v2, "Address Confirmation Required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    .line 1207
    :cond_2
    move v6, v0

    .line 1211
    .end local v0    # "confirmationRequired":Z
    .local v6, "confirmationRequired":Z
    :goto_0
    new-instance v7, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;

    const/4 v1, 0x6

    iget-boolean v2, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mSuccess:Z

    iget-object v3, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mReason:Ljava/lang/String;

    iget v4, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mAddressId:I

    move-object v0, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;-><init>(IZLjava/lang/String;IZ)V

    .line 1214
    .local v0, "noti":Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;
    iget v1, p1, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 1215
    .local v1, "listener":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    if-eqz v1, :cond_3

    .line 1217
    :try_start_0
    invoke-interface {v1, v0}, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    goto :goto_1

    .line 1218
    :catch_0
    move-exception v2

    .line 1219
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public provisionAccount()V
    .locals 4

    .line 599
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    .line 600
    return-void
.end method

.method public reLogin(IZ)V
    .locals 12
    .param p1, "retryCount"    # I
    .param p2, "needNewToken"    # Z

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reLogin(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needNewToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 701
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 704
    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    .line 705
    .local v2, "expBackoff":J
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reLogin(): backoff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 706
    add-int/2addr p1, v1

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    .line 707
    const/4 p1, 0x6

    .line 709
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v7, 0x404

    move v8, p1

    move v9, p2

    move-wide v10, v2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessageDelayed(IIIJ)V

    .line 710
    return-void

    .line 713
    .end local v2    # "expBackoff":J
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 714
    .local v0, "info":Landroid/net/NetworkInfo;
    const/16 v2, 0x11

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 717
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 718
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 720
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    .line 721
    if-eqz p2, :cond_2

    .line 722
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 723
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "refresh_token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 725
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 726
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x406

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    goto :goto_0

    .line 728
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x405

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    goto :goto_0

    .line 731
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "reLogin(): network info is null or not connected"

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 734
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x409

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 736
    :goto_0
    return-void
.end method

.method public refreshToken(IJI)V
    .locals 3
    .param p1, "retryCount"    # I
    .param p2, "timeout"    # J
    .param p4, "attempt"    # I

    .line 1469
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshToken(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1473
    .local v0, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v1, "/oauth/v4/token"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1474
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&client_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&grant_type=refresh_token&refresh_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 1477
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1478
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1480
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x3f7

    invoke-virtual {v1, v2, p1, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 1481
    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 3
    .param p1, "callerUid"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProgressListener current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 3
    .param p1, "callerUid"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 506
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupplementaryServiceListener current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public releaseImsNetworkIdentities(IJ)V
    .locals 8
    .param p1, "retryCount"    # I
    .param p2, "timeout"    # J

    .line 1341
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseImsNetworkIdentities(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "No IMS network identifiers to release."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 1346
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    .line 1350
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildReleaseImsNetworkIdentifiersRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;

    move-result-object v0

    .line 1352
    .local v0, "releaseImsNetworkIdentifiersRequest":Lcom/sec/internal/ims/entitlement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1354
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    const-string v2, "/softphone/v1/identities"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1355
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const/4 v2, 0x0

    .line 1358
    .local v2, "request":Lorg/json/JSONObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 1360
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1361
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    goto :goto_0

    .line 1362
    :catch_0
    move-exception v4

    .line 1363
    .local v4, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not build JSONObject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1367
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1369
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, p1, v6, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 1370
    return-void
.end method

.method public resetCurrentAddresses()V
    .locals 4

    .line 1334
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "resetCurrentAddresses()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildResetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1336
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1337
    return-void
.end method

.method restoreAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 11
    .param p1, "authorizationCode"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "autoRegister"    # Z
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I

    .line 518
    move-object v9, p0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tokenExist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, v9, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "restoreAccessToken(): Softphone Service is recovering"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 520
    move/from16 v10, p5

    invoke-direct {p0, v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 521
    iget-object v0, v9, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 522
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccountSecretKey()V

    .line 523
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshTokenAfterRecovery()V

    .line 524
    iget-object v0, v9, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    goto :goto_0

    .line 518
    :cond_0
    move/from16 v10, p5

    .line 525
    iget-object v0, v9, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    const/4 v6, 0x0

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    .line 528
    :cond_1
    :goto_0
    return-void
.end method

.method public revokeAccessToken()V
    .locals 6

    .line 1402
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "revokeAccessToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->removeMessages(I)V

    .line 1405
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method public declared-synchronized scheduleSmsAlarm()V
    .locals 13

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 385
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sms_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v1, v2, v9, v10, v11}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;J)V

    .line 388
    const/16 v1, 0x1e

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 391
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "resend_sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v9, 0x8000000

    const/4 v10, 0x0

    invoke-static {v2, v10, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 395
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v10, v11, v12, v9}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 397
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "schedule to send SMS at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 383
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 796
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void
.end method

.method public setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 774
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void
.end method

.method public startInitstate()V
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 538
    :cond_0
    return-void
.end method

.method public tryDeregister()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 672
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 673
    return-void
.end method

.method public tryRegister()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 668
    return-void
.end method

.method public updateAccountStatus(Ljava/lang/String;I)V
    .locals 8
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccountStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 300
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x0

    .line 301
    .local v3, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    const/4 v6, 0x2

    if-eq p2, v6, :cond_1

    const/4 v6, 0x5

    if-eq p2, v6, :cond_0

    .line 312
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "status"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string/jumbo v2, "status > ?"

    .line 316
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v3, v4

    .line 317
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    return-void

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildRegisteredAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 310
    goto :goto_0

    .line 303
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildDeActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 307
    nop

    .line 321
    :goto_0
    if-eqz v0, :cond_3

    .line 322
    const-string/jumbo v2, "userid = ?"

    .line 323
    new-array v4, v4, [Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v3, v4

    .line 324
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, "rowsAffected":I
    if-nez v4, :cond_3

    .line 326
    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "userid"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 330
    .end local v4    # "rowsAffected":I
    :cond_3
    return-void
.end method

.method public validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 9
    .param p1, "addressId"    # I
    .param p2, "confirmed"    # Z
    .param p3, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 628
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    .line 629
    return-void
.end method
