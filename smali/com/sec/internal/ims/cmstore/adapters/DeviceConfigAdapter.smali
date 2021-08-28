.class public Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
.super Ljava/lang/Object;
.source "DeviceConfigAdapter.java"


# static fields
.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final APPLICATION:Ljava/lang/String; = "APPLICATION"

.field private static final FAX:Ljava/lang/String; = "FAX"

.field private static final MESSAGE_STORE:Ljava/lang/String; = "MessageStore"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private mResolver:Landroid/content/ContentResolver;

.field public mStoreDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    .line 173
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;-><init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$2;

    new-instance v1, Landroid/os/Handler;

    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$2;-><init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mContentObserver:Landroid/database/ContentObserver;

    .line 161
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 164
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 165
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setFaxDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;)V
    .locals 6
    .param p1, "faxConfig"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;

    .line 252
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;->mRootUrl:Ljava/lang/String;

    .line 253
    .local v0, "rootUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string/jumbo v2, "rootURL"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;->mApiVersion:Ljava/lang/String;

    .line 257
    .local v1, "apiVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string v3, "faxApiVersion"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;->mServiceName:Ljava/lang/String;

    .line 261
    .local v2, "serviceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string/jumbo v4, "serviceName"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFaxDataMap TmoFax.ROOT_URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "TmoFax.API_VERSION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " TmoFax.SERVICE_NAME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private setParmsMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;)V
    .locals 6
    .param p1, "parm"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;

    .line 47
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "SiTUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ": "

    const-string v3, "AKAUrl"

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 55
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 57
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "PushSyncDelay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 59
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string/jumbo v1, "serverRoot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 61
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "apiVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 63
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string/jumbo v1, "storeName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 65
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "disableDirectionHeader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 68
    :cond_8
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "SyncTimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 70
    :cond_9
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "DataConnectionSyncTimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 74
    :cond_a
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "AuthProt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 76
    :cond_b
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "UserName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 78
    :cond_c
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "UserPwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 80
    :cond_d
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "EventRpting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 82
    :cond_e
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "SMSStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 84
    :cond_f
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "MMSStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 86
    :cond_10
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "MaxBulkDelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 88
    :cond_11
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v1, "MaxSearch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_12
    :goto_2
    return-void
.end method

.method private setTmoFolderIdMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)V
    .locals 5
    .param p1, "characteristic"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 94
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTmoFolderIdMStoreDataMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;

    .line 97
    .local v1, "parm":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 98
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 99
    const-string v3, "RCSMessageStore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 105
    const-string v3, "CallHistory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 109
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 110
    const-string v3, "Media/Fax"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 113
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 114
    const-string v3, "VV-Mail/Greetings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 118
    :cond_3
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 119
    const-string v3, "VV-Mail/Inbox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v1    # "parm":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;
    :cond_4
    :goto_1
    goto :goto_0

    .line 125
    :cond_5
    return-void
.end method

.method private setTmoSyncFromDaysMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)V
    .locals 5
    .param p1, "characteristic"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 128
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTmoSyncFromDaysMStoreDataMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;

    .line 131
    .local v1, "parm":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    const-string v3, "VVM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 136
    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 141
    const-string v3, "CallLog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 146
    const-string v3, "VVMGreeting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_3
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    .line 152
    const-string v3, "FAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v1    # "parm":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;
    :cond_4
    :goto_1
    goto :goto_0

    .line 158
    :cond_5
    return-void
.end method


# virtual methods
.method public getDeviceConfig()Ljava/lang/String;
    .locals 7

    .line 269
    const-string v0, "device_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "projection":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_0
    return-object v1

    .line 273
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 278
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseDeviceConfig()V
    .locals 8

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->getDeviceConfig()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "deviceConfigXml":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 206
    nop

    .line 208
    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->parseDeviceConfig(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;

    move-result-object v1

    .line 210
    .local v1, "deviceConfigration":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    if-nez v1, :cond_0

    .line 211
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v3, "deviceConfiguration is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 214
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mJanskyConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mJanskyConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;->mWsgUri:Ljava/lang/String;

    .line 215
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mJanskyConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;->mWsgUri:Ljava/lang/String;

    .line 217
    .local v2, "wsgUri":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "janskyConfig.WSG_URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    const-string v4, "WSG_URI"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v2    # "wsgUri":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mFaxConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;

    if-eqz v2, :cond_2

    .line 222
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mFaxConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setFaxDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;)V

    .line 225
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mRCSConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mRCSConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;->mWapProvisioningDoc:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mRCSConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;->mWapProvisioningDoc:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;->mCharacteristics:Ljava/util/List;

    if-nez v2, :cond_3

    goto :goto_2

    .line 231
    :cond_3
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;->mRCSConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;->mWapProvisioningDoc:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 233
    .local v3, "characteristic":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v5, "APPLICATION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 234
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 235
    .local v5, "chrstic":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    iget-object v6, v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v7, "MessageStore"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 236
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setMstoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v5    # "chrstic":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    :cond_4
    goto :goto_1

    .line 240
    .end local v3    # "characteristic":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    :cond_5
    goto :goto_0

    .line 231
    .end local v1    # "deviceConfigration":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    :cond_6
    goto :goto_3

    .line 228
    .restart local v1    # "deviceConfigration":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    :cond_7
    :goto_2
    return-void

    .line 241
    .end local v1    # "deviceConfigration":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseDeviceConfig: malformed device config xml"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_3
    goto :goto_4

    .line 245
    :cond_8
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string v2, "!!!!Device Config XML is NULL!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->setDeviceConfigUsed(Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method public registerBootCompletedReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method public registerContentObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    return-void
.end method

.method public setMstoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)Ljava/util/Map;
    .locals 4
    .param p1, "mStoreCharacteristic"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMstoreDataMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mParms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;

    .line 288
    .local v1, "parm":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 289
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setParmsMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;)V

    .line 291
    .end local v1    # "parm":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic$Parm;
    :cond_0
    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    .line 295
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 296
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;

    .line 297
    .local v1, "characteristic":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v3, "FolderID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setTmoFolderIdMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)V

    goto :goto_2

    .line 300
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;->mType:Ljava/lang/String;

    const-string v3, "SyncFromDays"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->setTmoSyncFromDaysMStoreDataMap(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;)V

    .line 304
    .end local v1    # "characteristic":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc$Characteristic;
    :cond_3
    :goto_2
    goto :goto_1

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->mStoreDataMap:Ljava/util/Map;

    return-object v0
.end method
