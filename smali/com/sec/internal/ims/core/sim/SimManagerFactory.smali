.class public Lcom/sec/internal/ims/core/sim/SimManagerFactory;
.super Ljava/lang/Object;
.source "SimManagerFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimManagerFactory"

.field public static final PHONE_ID_NON_EXISTING:I = -0x1

.field private static mContext:Landroid/content/Context;

.field private static mCreated:Z

.field private static mDDSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private static mDefaultSimSubId:I

.field private static mIsMultiSimSupported:Z

.field private static mLooper:Landroid/os/Looper;

.field private static final mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private static mSubMan:Landroid/telephony/SubscriptionManager;

.field private static volatile sSimManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/SimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    .line 48
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDDSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 49
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 51
    sput v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 52
    sput-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    .line 205
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$2;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/telephony/SubscriptionManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sec/internal/helper/RegistrantList;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 37
    sget v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 37
    sput p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    return v0
.end method

.method static synthetic access$500()Lcom/sec/internal/helper/RegistrantList;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDDSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method public static createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 11
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    sget-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    sput-object p1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    .line 62
    sput-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mLooper:Landroid/os/Looper;

    .line 64
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    .line 65
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->setSubMgr(Landroid/telephony/SubscriptionManager;)V

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    .line 68
    .local v0, "phoneCount":I
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->setPhoneCount(I)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxSimCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManagerFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    .line 73
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    sput v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current default subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigDualIMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 80
    sget-object v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 81
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v10, Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object v4, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mLooper:Landroid/os/Looper;

    sget-object v5, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v8

    move-object v3, v10

    move v6, v2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/sim/SimManager;-><init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V

    .line 83
    .local v3, "sm":Lcom/sec/internal/ims/core/sim/SimManager;
    sget-object v4, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "sm":Lcom/sec/internal/ims/core/sim/SimManager;
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v2    # "i":I
    :cond_2
    sput-boolean v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    .line 87
    return-void
.end method

.method public static dump()V
    .locals 2

    .line 233
    const-string v0, "SimManagerFactory"

    const-string v1, "Dump of SimManagerFactory:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 235
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->dump()V

    .line 236
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method public static getAllSimManagers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    return-object v0
.end method

.method public static getImsiFromPhoneId(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .line 267
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 268
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 271
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getPhoneId(Ljava/lang/String;)I
    .locals 3
    .param p0, "ownIMSI"    # Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 251
    .local v1, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    return v0

    .line 256
    .end local v1    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static declared-synchronized getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 5

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 161
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    .line 162
    monitor-exit v0

    return-object v2

    .line 164
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    const-string v1, "SimManagerFactory"

    const-string v2, "Not matched. Return slot 0\'s."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 170
    :cond_2
    :try_start_2
    const-string v1, "SimManagerFactory"

    const-string v2, "SimManager is not yet initiated!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 4
    .param p0, "simSlot"    # I

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 176
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 177
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p0, :cond_0

    .line 178
    monitor-exit v0

    return-object v2

    .line 180
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    :try_start_1
    const-string v1, "SimManagerFactory"

    const-string v2, "getSimManagerFromSimSlot, No matched ISimManager. Return null.."

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 175
    .end local p0    # "simSlot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSimManagerFromSubId(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 4
    .param p0, "subId"    # I

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 187
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 188
    if-ltz p0, :cond_0

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 189
    :cond_0
    monitor-exit v0

    return-object v2

    .line 192
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    :try_start_1
    const-string v1, "SimManagerFactory"

    const-string v2, "getSimManagerFromSubId, No matched ISimManager. Return null.."

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 185
    .end local p0    # "subId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSlotId(I)I
    .locals 4
    .param p0, "subId"    # I

    .line 293
    const/4 v0, -0x1

    const-string v1, "SimManagerFactory"

    if-gez p0, :cond_0

    .line 294
    const-string/jumbo v2, "subId is wrong"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    return v0

    .line 298
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSubId(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 299
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v2, :cond_1

    .line 300
    const-string v3, "Simmanager is not created yet"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return v0

    .line 303
    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    return v0
.end method

.method public static initInstances()V
    .locals 3

    .line 90
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/sim/SimManager;

    .line 91
    .local v1, "sm":Lcom/sec/internal/ims/core/sim/SimManager;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/SimManager;->initializeSimState()V

    .line 92
    .end local v1    # "sm":Lcom/sec/internal/ims/core/sim/SimManager;
    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSimFactoryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 153
    return-void
.end method

.method public static isOutboundSim(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 282
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 283
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 284
    const-string v1, "SimManagerFactory"

    const-string v2, "isOutboundSim, sm is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    return v1

    .line 289
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isOutBoundSIM()Z

    move-result v1

    return v1
.end method

.method public static notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p0, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 240
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public static registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDDSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 199
    return-void
.end method

.method public static registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 203
    return-void
.end method
