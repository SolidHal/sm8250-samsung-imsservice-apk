.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;
.super Ljava/lang/Object;
.source "CapabilityUpdate.java"


# static fields
.field private static final LAST_SEEN_UNKNOWN:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityUpdate"

.field private static final MAX_LAST_SEEN:J = 0xa8c0L

.field private static final MAX_RETRY_SYNC_CONTACT_COUNT:I = 0xa

.field private static final MINUTE_DENOMINATION:I = 0xea60

.field private static final RETRY_SYNC_CONTACT_DELAY:I = 0x7530


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 3
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "capabilityUtil"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p4, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 60
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 61
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CapabilityUpdate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mBackgroundHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method private getLastSeen(I)I
    .locals 10
    .param p1, "phoneId"    # I

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUserLastActive(I)J

    move-result-wide v0

    .line 498
    .local v0, "storedLastSeen":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "CapabilityUpdate"

    if-gtz v2, :cond_0

    .line 499
    move-wide v4, v0

    .local v4, "lastSeen":J
    goto :goto_0

    .line 501
    .end local v4    # "lastSeen":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 502
    .local v4, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last active timestamp "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Current Time Stamp "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 503
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sub-long v6, v4, v0

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v2, v6

    int-to-long v6, v2

    .line 505
    .local v6, "lastSeen":J
    const-wide/32 v8, 0xa8c0

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    move-wide v8, v6

    :cond_1
    move-wide v6, v8

    move-wide v4, v6

    .line 507
    .end local v6    # "lastSeen":J
    .local v4, "lastSeen":J
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " last seen value "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    long-to-int v2, v4

    return v2
.end method

.method private isServiceRegistered(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 487
    .local p2, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getDefaultPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getDefaultPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    .line 489
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityUpdate"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 492
    .end local v0    # "imsRegistration":Lcom/sec/ims/ImsRegistration;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private needPollOnContactChanged(ZLjava/util/Date;IJ)Z
    .locals 8
    .param p1, "isPollRequired"    # Z
    .param p2, "current"    # Ljava/util/Date;
    .param p3, "phoneId"    # I
    .param p4, "mLastListSubscribeStamp"    # J

    .line 238
    const-string v0, "CapabilityUpdate"

    const/4 v1, 0x0

    .line 259
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string v2, "needPollOnContactChanged: isPollRequired is false."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(Z)V

    .line 241
    return v1

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v2, "needPollOnContactChanged: No URI to request."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(Z)V

    .line 246
    return v1

    .line 249
    :cond_1
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 250
    .local v3, "mMno":Lcom/sec/internal/constants/Mno;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_3

    .line 252
    :cond_2
    const-string v2, "needPollOnContactChanged: Address book scan disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v1

    .line 256
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isPollingInProgress(Ljava/util/Date;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 257
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_4

    .line 258
    const-string v1, "needPollOnContactChanged: posting delayed poll event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 260
    invoke-virtual {v2, p4, p5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getDelayTimeToPoll(JI)J

    move-result-wide v6

    .line 259
    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 261
    return v5

    .line 263
    :cond_4
    const-string v2, "needPollOnContactChanged: polling already in progress"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v1

    .line 267
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 268
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    const-string v1, "needPollOnContactChanged: posting poll event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 272
    invoke-virtual {v2, p4, p5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getDelayTimeToPoll(JI)J

    move-result-wide v6

    .line 271
    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    return v5

    .line 275
    :cond_6
    const-string v2, "needPollOnContactChanged: new contact was added but RCS not work"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsOfflineAddedContact(Z)V

    .line 279
    return v1
.end method

.method private processContactChanged(ZIZJ)V
    .locals 9
    .param p1, "initial"    # Z
    .param p2, "phoneId"    # I
    .param p3, "isOfflineAddedContact"    # Z
    .param p4, "mLastListSubscribeStamp"    # J

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;ZIZJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method private processUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V
    .locals 15
    .param p2, "availFeatures"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p5, "pidf"    # Ljava/lang/String;
    .param p6, "lastSeen"    # I
    .param p8, "phoneId"    # I
    .param p9, "isTokenUsed"    # Z
    .param p10, "extFeature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 337
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p7, "paidList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object v12, p0

    iget-object v13, v12, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v14, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$2BvbFjzBFvXZwZduM-p0JJRbmWw;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$2BvbFjzBFvXZwZduM-p0JJRbmWw;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;ILjava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;ZLjava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method


# virtual methods
.method _syncContact(Lcom/sec/internal/constants/Mno;)V
    .locals 4
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 392
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    if-nez v0, :cond_0

    .line 393
    const-string v0, "_syncContact: MnoStrategy is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 396
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 403
    :cond_1
    const-string v0, "_syncContact: initial startContactSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setMno(Lcom/sec/internal/constants/Mno;)V

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result v0

    if-ltz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_0

    .line 409
    :cond_2
    const-string v0, "_syncContact: contactProvider is not yet ready"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const v0, 0x12010008

    const-string v1, "N,CP:NOTREADY"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 412
    :goto_0
    return-void
.end method

.method isPollingInProgress(Ljava/util/Date;ILjava/util/List;)Z
    .locals 10
    .param p1, "current"    # Ljava/util/Date;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)Z"
        }
    .end annotation

    .line 283
    .local p3, "mPollingHistory":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CapabilityUpdate"

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPollingInProgress: mConfig for phoneId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isPollingPeriodUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->resetPollingPeriodUpdated()V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPollingPeriodUpdated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isPollingPeriodUpdated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "isPollingInProgress: subscribe throttle in progress"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v3

    .line 298
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 299
    .local v2, "pollDate":Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 300
    return v3

    .line 302
    .end local v2    # "pollDate":Ljava/util/Date;
    :cond_3
    goto :goto_0

    .line 303
    :cond_4
    return v1
.end method

.method public synthetic lambda$processContactChanged$0$CapabilityUpdate(ZIZJ)V
    .locals 21
    .param p1, "initial"    # Z
    .param p2, "phoneId"    # I
    .param p3, "isOfflineAddedContact"    # Z
    .param p4, "mLastListSubscribeStamp"    # J

    .line 112
    move-object/from16 v6, p0

    move/from16 v7, p2

    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContacts()Ljava/util/Map;

    move-result-object v8

    .line 113
    .local v8, "contacts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    move/from16 v0, p1

    .line 115
    .local v0, "isPollRequired":Z
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processContactChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x12010000

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 118
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 119
    .local v2, "current":Ljava/util/Date;
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/options/Contact;

    .line 121
    .local v3, "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getContactNumberList()Ljava/util/ArrayList;

    move-result-object v4

    .line 122
    .local v4, "numberList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 124
    .local v9, "cn":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v10

    const-string v12, "*"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 125
    const/4 v10, 0x0

    .local v10, "teluri":Lcom/sec/ims/util/ImsUri;
    goto :goto_2

    .line 126
    .end local v10    # "teluri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tel:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .restart local v10    # "teluri":Lcom/sec/ims/util/ImsUri;
    goto :goto_2

    .line 129
    .end local v10    # "teluri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    iget-object v10, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 132
    .restart local v10    # "teluri":Lcom/sec/ims/util/ImsUri;
    :goto_2
    iget-object v12, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v12, v10, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    .line 137
    :cond_3
    if-eqz v10, :cond_6

    .line 138
    iget-object v12, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 139
    iget-object v12, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v12, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v19

    .line 140
    .local v19, "capex":Lcom/sec/ims/options/Capabilities;
    if-nez v19, :cond_4

    .line 141
    new-instance v20, Lcom/sec/ims/options/Capabilities;

    invoke-static {v10}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v14

    .line 142
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, -0x1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v20

    move-object v13, v10

    invoke-direct/range {v12 .. v18}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 143
    .end local v19    # "capex":Lcom/sec/ims/options/Capabilities;
    .local v12, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->resetFeatures()V

    .line 144
    invoke-virtual {v12, v7}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 145
    iget-object v13, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v13, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    move-object/from16 v19, v12

    goto :goto_3

    .line 146
    .end local v12    # "capex":Lcom/sec/ims/options/Capabilities;
    .restart local v19    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    .line 147
    iget-object v12, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v12, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v12

    .line 148
    invoke-static {v10}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v15

    .line 147
    invoke-virtual {v12, v10, v13, v14, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->updateContactInfo(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v12, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v12, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistCachedUri(Lcom/sec/ims/util/ImsUri;)V

    .line 161
    :goto_3
    iget-object v12, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v12, v10, v11, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 162
    const/4 v0, 0x1

    goto :goto_4

    .line 151
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 152
    iget-object v11, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v11, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v11

    .line 153
    invoke-static {v10}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v14

    .line 152
    invoke-virtual {v11, v10, v12, v13, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->updateContactInfo(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    goto/16 :goto_1

    .line 166
    .end local v9    # "cn":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    .end local v10    # "teluri":Lcom/sec/ims/util/ImsUri;
    .end local v19    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_6
    :goto_4
    goto/16 :goto_1

    .line 167
    .end local v3    # "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    .end local v4    # "numberList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;>;"
    :cond_7
    goto/16 :goto_0

    .line 168
    :cond_8
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processContactChanged: updatePollList done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 169
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contacts added"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v1, v7, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 171
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->handleRemovedNumbers(I)V

    .line 173
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const-string v9, "CapabilityUpdate"

    if-nez v1, :cond_9

    if-nez v0, :cond_9

    .line 174
    if-eqz p3, :cond_9

    .line 175
    const-string/jumbo v1, "processContactChanged: added an contact when RCS offline. need to poll"

    invoke-static {v9, v7, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    .line 177
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsOfflineAddedContact(Z)V

    move v10, v0

    goto :goto_5

    .line 180
    :cond_9
    move v10, v0

    .end local v0    # "isPollRequired":Z
    .local v10, "isPollRequired":Z
    :goto_5
    move-object/from16 v0, p0

    move v1, v10

    move/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->needPollOnContactChanged(ZLjava/util/Date;IJ)Z

    move-result v0

    if-nez v0, :cond_a

    .line 181
    const-string/jumbo v0, "processContactChanged: no need to poll now"

    invoke-static {v9, v7, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    :cond_a
    return-void
.end method

.method public synthetic lambda$processUpdateCapabilities$1$CapabilityUpdate(ILjava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;ZLjava/lang/String;)V
    .locals 38
    .param p1, "phoneId"    # I
    .param p2, "uris"    # Ljava/util/List;
    .param p3, "availFeatures"    # J
    .param p5, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p6, "pidf"    # Ljava/lang/String;
    .param p7, "lastSeen"    # I
    .param p8, "paidList"    # Ljava/util/List;
    .param p9, "isTokenUsed"    # Z
    .param p10, "extFeature"    # Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v11, p5

    const/4 v4, 0x0

    .line 339
    .local v4, "hasCapChanged":Z
    const/4 v5, 0x0

    .line 340
    .local v5, "expCapInfoExpiry":I
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getIsSupportExpCapInfoExpiry()Z

    move-result v12

    .line 341
    .local v12, "isSupportExpCapInfoExpiry":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v6

    .line 342
    .local v13, "expiredList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    .line 343
    .local v14, "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    .line 344
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 347
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processUpdateCapabilities,run, normalizedUris "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v15, "CapabilityUpdate"

    invoke-static {v15, v1, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "hasCapChanged":Z
    .end local v5    # "expCapInfoExpiry":I
    .local v17, "hasCapChanged":Z
    .local v18, "expCapInfoExpiry":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/sec/ims/util/ImsUri;

    .line 349
    .local v10, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v7

    .line 351
    .local v7, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-interface {v4, v7, v2, v3, v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateAvailableFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J

    move-result-wide v5

    .line 353
    .local v5, "updatedAvailFeatures":J
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-interface {v4, v7, v5, v6, v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J

    move-result-wide v2

    .line 354
    .local v2, "features":J
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 355
    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v19

    .line 354
    move-wide/from16 v34, v5

    .end local v5    # "updatedAvailFeatures":J
    .local v34, "updatedAvailFeatures":J
    move-object/from16 v5, p5

    move-object v6, v7

    move-object/from16 v36, v14

    move-object v14, v7

    .end local v7    # "capex":Lcom/sec/ims/options/Capabilities;
    .local v14, "capex":Lcom/sec/ims/options/Capabilities;
    .local v36, "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-wide v7, v2

    move-object/from16 v37, v15

    move-object v15, v10

    .end local v10    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v15, "uri":Lcom/sec/ims/util/ImsUri;
    move-wide/from16 v9, v19

    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    move-wide/from16 v2, p3

    move-object/from16 v14, v36

    move-object/from16 v15, v37

    goto :goto_1

    .line 359
    :cond_1
    if-eqz v14, :cond_2

    if-eqz v12, :cond_2

    .line 360
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v4, v14, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->updateExpCapInfoExpiry(Lcom/sec/ims/options/Capabilities;JI)I

    move-result v4

    move/from16 v18, v4

    .line 367
    :cond_2
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v19

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne v11, v4, :cond_3

    const/4 v9, 0x1

    move/from16 v25, v9

    goto :goto_2

    :cond_3
    const/16 v25, 0x0

    :goto_2
    move/from16 v4, p7

    int-to-long v5, v4

    new-instance v29, Ljava/util/Date;

    invoke-direct/range {v29 .. v29}, Ljava/util/Date;-><init>()V

    move-object/from16 v20, v15

    move-wide/from16 v21, v2

    move-wide/from16 v23, v34

    move-object/from16 v26, p6

    move-wide/from16 v27, v5

    move-object/from16 v30, p8

    move/from16 v31, p9

    move-object/from16 v32, p10

    move/from16 v33, v18

    invoke-virtual/range {v19 .. v33}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->update(Lcom/sec/ims/util/ImsUri;JJZLjava/lang/String;JLjava/util/Date;Ljava/util/List;ZLjava/lang/String;I)Z

    move-result v5

    or-int v5, v17, v5

    .line 369
    .end local v17    # "hasCapChanged":Z
    .local v5, "hasCapChanged":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processUpdateCapabilities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is updated, features: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", hasCapChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    move-object/from16 v7, v37

    invoke-static {v7, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    const v6, 0x12010005

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_5
    const-string/jumbo v10, "xx"

    :goto_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v9, v2

    move-wide/from16 v2, p3

    .end local v2    # "features":J
    .local v9, "features":J
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 371
    invoke-static {v6, v8}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 374
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-wide/from16 v2, v34

    .end local v34    # "updatedAvailFeatures":J
    .local v2, "updatedAvailFeatures":J
    invoke-virtual {v6, v15, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->sendGateMessage(Lcom/sec/ims/util/ImsUri;JI)V

    .line 375
    .end local v2    # "updatedAvailFeatures":J
    .end local v9    # "features":J
    .end local v14    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v15    # "uri":Lcom/sec/ims/util/ImsUri;
    move-wide/from16 v2, p3

    move/from16 v17, v5

    move-object v15, v7

    move-object/from16 v14, v36

    goto/16 :goto_1

    .line 377
    .end local v5    # "hasCapChanged":Z
    .end local v36    # "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v14, "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v17    # "hasCapChanged":Z
    :cond_6
    move/from16 v4, p7

    move-object/from16 v36, v14

    .end local v14    # "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v36    # "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v2, v36

    .end local v36    # "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v2, "normalizedUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v2, v13}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 378
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 379
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 380
    .local v3, "capex":Lcom/sec/ims/options/Capabilities;
    if-eqz v3, :cond_8

    .line 381
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v6

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v6, v7, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 382
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "botServiceId":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sec/ims/options/Capabilities;->setBotServiceId(Ljava/lang/String;)V

    goto :goto_5

    .line 381
    .end local v5    # "botServiceId":Ljava/lang/String;
    :cond_7
    move-object/from16 v7, p2

    .line 385
    :goto_5
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;I)V

    goto :goto_6

    .line 380
    :cond_8
    move-object/from16 v7, p2

    goto :goto_6

    .line 378
    .end local v3    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_9
    move-object/from16 v7, p2

    .line 388
    :goto_6
    return-void
.end method

.method onContactChanged(ZIZJ)V
    .locals 3
    .param p1, "initial"    # Z
    .param p2, "phoneId"    # I
    .param p3, "isOfflineAddedContact"    # Z
    .param p4, "mLastListSubscribeStamp"    # J

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    if-nez v0, :cond_0

    .line 534
    const-string v0, "onContactChanged: mUriGenerator is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 538
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactChanged: initial = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 540
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->processContactChanged(ZIZJ)V

    .line 541
    return-void
.end method

.method onOwnCapabilitiesChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOwnCapabilitiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 419
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string v1, "CapabilityUpdate"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    return-void
.end method

.method onRetrySyncContact(I)V
    .locals 4
    .param p1, "mRetrySyncContactCount"    # I

    .line 512
    const-string v0, "CapabilityUpdate"

    const-string/jumbo v1, "onRetrySyncContact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x12010009

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(I)V

    .line 516
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 517
    const-string/jumbo v1, "onRetrySyncContact: max retry count exceed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result v1

    if-ltz v1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setRetrySyncContactCount(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->syncContact()V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setRetrySyncContactCount(I)V

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRetrySyncContact: contactProvider is not yet ready, retrycount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 530
    :goto_0
    return-void
.end method

.method onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p2, "availFeatures"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p5, "pidf"    # Ljava/lang/String;
    .param p6, "lastSeen"    # I
    .param p8, "phoneId"    # I
    .param p9, "isTokenUsed"    # Z
    .param p10, "extFeature"    # Ljava/lang/String;
    .param p11, "mCallNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 309
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p7, "paidList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move/from16 v14, p8

    const-string v0, "CapabilityUpdate"

    if-nez v12, :cond_0

    .line 310
    const-string/jumbo v1, "onUpdateCapabilities: uris null, return"

    invoke-static {v0, v14, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    return-void

    .line 314
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 315
    .local v15, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 316
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    goto :goto_0

    .line 320
    :cond_2
    iget-object v1, v11, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    move-wide/from16 v3, p2

    move-object/from16 v10, p11

    invoke-virtual {v1, v3, v4, v2, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v16

    .line 322
    .end local p2    # "availFeatures":J
    .local v16, "availFeatures":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCapabilities: uriList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v14, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static/range {v16 .. v17}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v0, v14, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v13, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setLastCapExResult(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;I)V

    .line 327
    iget-object v0, v11, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    return-void

    .line 331
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->processUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V

    .line 332
    return-void
.end method

.method prepareResponse(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 21
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "availFeatures"    # J
    .param p5, "txId"    # Ljava/lang/String;
    .param p6, "phoneId"    # I
    .param p7, "extDestFeature"    # Ljava/lang/String;
    .param p9, "mNetworkType"    # I
    .param p10, "mCallNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 424
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p8, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v12, p6

    move-object/from16 v13, p8

    move/from16 v14, p9

    const-string v4, "CapabilityUpdate"

    const-string/jumbo v5, "prepareResponse"

    invoke-static {v4, v12, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v5, :cond_8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_4

    .line 429
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v14, v7, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v15

    .line 430
    .local v15, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v5, v5

    .line 432
    .local v5, "features":J
    const-string v8, ""

    .line 433
    .local v8, "extFeature":Ljava/lang/String;
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v11

    .line 434
    .local v11, "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p7 .. p7}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v11}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 435
    new-instance v9, Ljava/util/ArrayList;

    const-string v10, ","

    move-object/from16 v7, p7

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v9

    .line 436
    .local v7, "extDestFeaturesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 437
    invoke-static {v7}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 438
    invoke-static {v10, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    goto :goto_0

    .line 441
    .end local v7    # "extDestFeaturesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v10, v8

    .end local v8    # "extFeature":Ljava/lang/String;
    .local v10, "extFeature":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Common extfeature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v7, -0x1

    .line 445
    .local v7, "lastSeen":I
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-static {v9, v8}, Lcom/sec/internal/helper/BlockedNumberUtil;->isBlockedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 446
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move/from16 v17, v7

    .end local v7    # "lastSeen":I
    .local v17, "lastSeen":I
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/options/Capabilities;

    move-object/from16 v18, v10

    .end local v10    # "extFeature":Ljava/lang/String;
    .local v18, "extFeature":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v5

    .line 452
    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 453
    and-long/2addr v5, v2

    .line 455
    :cond_2
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isLastSeenActive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 456
    const-string v7, "lastseen"

    invoke-direct {v0, v7, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->isServiceRegistered(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v2, v3, v7, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 458
    const-string/jumbo v7, "setting last seen active"

    invoke-static {v4, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-direct {v0, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->getLastSeen(I)I

    move-result v4

    move v7, v4

    .end local v17    # "lastSeen":I
    .local v4, "lastSeen":I
    goto :goto_1

    .line 461
    .end local v4    # "lastSeen":I
    .restart local v17    # "lastSeen":I
    :cond_3
    move/from16 v7, v17

    .end local v17    # "lastSeen":I
    .restart local v7    # "lastSeen":I
    :goto_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/util/ImsUri;

    move-object/from16 v10, p10

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v19, v5

    move/from16 v17, v7

    goto/16 :goto_2

    .line 463
    .end local v18    # "extFeature":Ljava/lang/String;
    .restart local v10    # "extFeature":Ljava/lang/String;
    :cond_4
    move/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v10, p10

    .end local v7    # "lastSeen":I
    .end local v10    # "extFeature":Ljava/lang/String;
    .restart local v17    # "lastSeen":I
    .restart local v18    # "extFeature":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    const-string v8, "block_msg"

    invoke-interface {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 464
    new-instance v7, Ljava/util/HashSet;

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v7, "chatService":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 466
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v19, v7

    .end local v7    # "chatService":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "chatService":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v5

    .line 472
    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 473
    and-long/2addr v5, v2

    .line 475
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number is blocked respond with Chat tag : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v19    # "chatService":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-wide/from16 v19, v5

    goto :goto_2

    .line 477
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number is blocked respond with empty tags : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v19, v5

    .line 481
    .end local v5    # "features":J
    .local v19, "features":J
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 482
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    move-wide/from16 v6, v19

    move-object/from16 v8, p5

    move/from16 v9, v17

    move-object/from16 v16, v18

    .end local v18    # "extFeature":Ljava/lang/String;
    .local v16, "extFeature":Ljava/lang/String;
    move/from16 v10, p6

    move-object/from16 v18, v11

    .end local v11    # "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z

    goto :goto_3

    .line 481
    .end local v16    # "extFeature":Ljava/lang/String;
    .restart local v11    # "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "extFeature":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v18

    move-object/from16 v18, v11

    .line 484
    .end local v11    # "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "extFeature":Ljava/lang/String;
    .local v18, "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 426
    .end local v15    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "extFeature":Ljava/lang/String;
    .end local v17    # "lastSeen":I
    .end local v18    # "extOwnFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "features":J
    :cond_8
    :goto_4
    const-string/jumbo v5, "prepareResponse: mRegMan or mImsRegInfo is null"

    invoke-static {v4, v12, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    return-void
.end method

.method setLegacyLatching(Landroid/content/Context;Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "isLatching"    # Z
    .param p4, "phoneId"    # I

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLegacyLatching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isLatching = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUpdate"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 546
    .local v0, "capex":Lcom/sec/ims/options/Capabilities;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v3

    .line 548
    .local v3, "oldLatching":Z
    if-eq v3, p3, :cond_1

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLegacyLatching: Latching is changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p4, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    invoke-virtual {v0, p3}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 551
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->exponentialCapInfoExpiry:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->setExpCapInfoExpiry(I)V

    .line 554
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistCachedUri(Lcom/sec/ims/util/ImsUri;)V

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1, v0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;I)V

    .line 559
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->sendRCSLInfoToHQM(Landroid/content/Context;ZI)Z

    .line 560
    const v2, 0x12010002

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 561
    const/4 v2, 0x1

    return v2

    .line 564
    .end local v1    # "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "oldLatching":Z
    :cond_1
    return v2
.end method

.method setOwnCapabilities(Landroid/content/Context;IZLjava/util/Map;IZLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "notifyToRm"    # Z
    .param p5, "mNetworkType"    # I
    .param p6, "mIsInCall"    # Z
    .param p7, "mCallNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 188
    .local p4, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    const-string v0, "CapabilityUpdate"

    const-string/jumbo v1, "setOwnCapabilities:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 191
    .local v1, "ownCap":Lcom/sec/ims/options/Capabilities;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v2, p4, v3, p5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;

    move-result-object v2

    .line 192
    .local v2, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    .line 194
    .local v3, "features":J
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v5, v3, v4, v2, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v3

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v5

    if-eq p2, v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v5, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterEnrichedCallFeatures(J)J

    move-result-wide v3

    goto :goto_0

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v5, v3, v4, p6, p7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithCallState(JZLjava/lang/String;)J

    move-result-wide v3

    .line 201
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v6

    invoke-virtual {v5, v6, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setHasVideoOwnCapability(ZI)V

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOwnCapabilities: mHasVideoOwn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->hasVideoOwnCapability(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const v5, 0x12010004

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",SETOWN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v5

    invoke-virtual {v5, v3, v4, p2}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->setOwnCapabilities(JI)V

    .line 206
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v5

    invoke-virtual {v5, v3, v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setOwnCapabilities(JI)V

    .line 211
    .end local v3    # "features":J
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    if-nez v3, :cond_2

    .line 213
    const-string/jumbo v3, "setOwnCapabilities: Add ownCap to CapabilitiesCache"

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 218
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    goto :goto_2

    .line 220
    :cond_2
    const-string/jumbo v3, "setOwnCapabilities: updateOwnCapabilities"

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 225
    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyOwnCapabilitiesChanged(I)V

    .line 231
    return-void
.end method

.method updateOwnCapabilities(Landroid/content/Context;Ljava/util/Map;IZI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I
    .param p4, "mIsConfiguredOnCapability"    # Z
    .param p5, "mNetworkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;IZI)V"
        }
    .end annotation

    .line 70
    .local p2, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    const-wide/16 v0, 0x0

    .line 71
    .local v0, "features":J
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAllServiceModules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 72
    .local v3, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-ne v3, v4, :cond_0

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getSupportFeature(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 76
    .end local v3    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isLastSeenActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const-string v2, "lastseen"

    invoke-static {p1, v2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 80
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    or-long/2addr v0, v4

    .line 83
    :cond_2
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 84
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOwnCapabilities: mIsConfiguredOnCapability is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", features from all module is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string v5, "CapabilityUpdate"

    invoke-static {v5, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v4, :cond_4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p4, :cond_4

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p5

    .line 89
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(I)V

    .line 91
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, p5, v7, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v4

    .line 94
    .local v4, "profileServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v6, v0, v1, v4, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v0

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v6

    if-eq p3, v6, :cond_4

    .line 96
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterEnrichedCallFeatures(J)J

    move-result-wide v0

    .line 99
    .end local v4    # "profileServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateOwnCapabilities: filtered features is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, p3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/options/Capabilities;

    .line 101
    .local v4, "ownCap":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v4, v0, v1}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 102
    invoke-virtual {v4, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 103
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putOwnList(ILcom/sec/ims/options/Capabilities;)V

    .line 105
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, v3, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsConfigured(ZI)V

    .line 106
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, v3, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsConfiguredOnCapability(ZI)V

    .line 107
    return-void
.end method
