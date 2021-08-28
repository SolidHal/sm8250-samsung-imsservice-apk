.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "EntitlementAndE911AidCheckFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;


# static fields
.field private static final FAIL_ENTITLEMENT_AUTO_ON:I = 0xe

.field private static final INIT_E911_ADDRESS_UPDATE:I = 0xa

.field private static final INIT_ENTITLEMENT_CHECK:I = 0x8

.field private static final INIT_PUSH_TOKEN_REMOVAL:I = 0x9

.field private static final LOCATION_AND_TC_CHECK:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final OPEN_E911_ADDRESS_UPDATE_WEBSHEET:I = 0x5

.field private static final OPEN_LOC_AND_TC_WEBSHEET:I = 0x4

.field private static final REGISTER_PUSH_TOKEN:I = 0x2

.field private static final REMOVE_PUSH_TOKEN:I = 0x3

.field private static final REMOVE_PUSH_TOKEN_AUTO_ON:I = 0xc

.field private static final REMOVE_PUSH_TOKEN_AUTO_ON_AFTER:I = 0xd

.field private static final RESULT_SVC_PROV_LOC_AND_TC_WEBSHEET:I = 0x6

.field private static final RESULT_UPDATE_LOC_AND_TC_WEBSHEET:I = 0x7

.field private static final RETRY_ENTITLEMENT_AUTO_ON:I = 0xb

.field private static final VOWIFI_ENTITLEMENT_CHECK:I = 0x1


# instance fields
.field private final mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServerData:Ljava/lang/String;

.field private mServerUrl:Ljava/lang/String;

.field private simSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->simSlot:I

    .line 88
    return-void
.end method

.method private checkLocationAndTC()V
    .locals 10

    .line 338
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkLocationAndTC()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v0

    .line 341
    .local v0, "nativeLineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkLocationAndTC: native line detail is null"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_state"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 345
    return-void

    .line 348
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;

    .line 349
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v8, Landroid/os/Messenger;

    invoke-direct {v8, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v9, "1.0"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 351
    .local v2, "manageLocationAndTC":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;
    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->checkLocationAndTC(Ljava/lang/String;ZJ)V

    .line 353
    return-void
.end method

.method private checkSntMode()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    .line 429
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 431
    .local v0, "isProvisioned":Z
    :goto_0
    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method private checkVoWifiEntitlement()V
    .locals 8

    .line 356
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkVoWifiEntitlement: requesting entitlement check"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "vowifi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    .line 362
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 363
    .local v1, "bulkEntitlementCheck":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;
    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;ZJ)V

    .line 365
    return-void
.end method

.method private failEntitlementAutoOn()V
    .locals 4

    .line 272
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ATT_AutoOn] failEntitlementAutoOn - reset token in device"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "push_token"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sent_token_to_server"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 277
    return-void
.end method

.method private getE911AidValidationBundle()Landroid/os/Bundle;
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineE911AidExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "e911AidExp":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "e911_aid_exp"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string/jumbo v3, "svc_prov_status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getE911AidValidationBundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", OnSvcProv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-object v1
.end method

.method private getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    .locals 4

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "webSheetData":Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerData:Ljava/lang/String;

    .line 489
    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getLocAndTcWebSheetData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object v0

    .line 491
    :cond_0
    return-object v0
.end method

.method private getLocAndTcWebsheetRespCode(I)I
    .locals 2
    .param p1, "result"    # I

    .line 464
    const/4 v0, -0x1

    .line 465
    .local v0, "respCode":I
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 479
    const/16 v0, 0x8fd

    goto :goto_0

    .line 476
    :cond_0
    const/16 v0, 0x900

    .line 477
    goto :goto_0

    .line 470
    :cond_1
    const/16 v0, 0x9c4

    .line 471
    goto :goto_0

    .line 467
    :cond_2
    const/16 v0, 0x3e8

    .line 468
    goto :goto_0

    .line 473
    :cond_3
    const/16 v0, 0x8fc

    .line 474
    nop

    .line 482
    :goto_0
    return v0
.end method

.method private getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;
    .locals 5
    .param p1, "responseLocation"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_3

    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, "locAndTcStatus":Z
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    .line 441
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    :cond_1
    const/4 v1, 0x1

    .line 444
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string/jumbo v3, "svc_prov_status"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string v2, "loc_and_tc_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    const-string v3, "loc_and_tc_server_url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    const-string v3, "loc_and_tc_server_data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocationAndTCStatusBundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v1    # "locAndTcStatus":Z
    :cond_3
    return-object v0
.end method

.method private handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 12
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 91
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 93
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-nez p1, :cond_0

    .line 94
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v1

    .line 98
    .local v1, "errorResponseCode":I
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getHttpErrRespReason(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "errorResponseReason":Ljava/lang/String;
    if-gtz v1, :cond_a

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 107
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 108
    .local v4, "entitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
    const-string v5, "getMSISDN"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 110
    .local v6, "responseGetMsisdn":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    const-string v7, ", responseCode:"

    const/16 v8, 0x3e8

    if-eqz v4, :cond_6

    .line 111
    sget-object v9, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ResponseServiceEntitlementStatus : messageId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v9, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    if-ne v9, v8, :cond_5

    .line 115
    iget-object v2, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 116
    .local v9, "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    iget-object v10, v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string/jumbo v11, "vowifi"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 117
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "service responseCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", onDemandProv: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v2, v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 119
    iget v2, v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    const/16 v10, 0x418

    if-ne v2, v10, :cond_4

    .line 120
    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->simSlot:I

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, v9, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 130
    .end local v9    # "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    goto :goto_2

    .line 132
    :cond_5
    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 133
    iget v2, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 137
    :cond_6
    :goto_2
    if-eqz v6, :cond_9

    .line 138
    iget v2, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    if-ne v2, v8, :cond_8

    .line 139
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;-><init>()V

    .line 140
    .local v2, "mNativeLineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseGetMsisdn content : messageId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->messageId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", msisdn:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service_fingerprint:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v5, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    if-ne v5, v8, :cond_7

    iget-object v5, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 147
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertOrUpdateNativeLine(JLjava/lang/String;Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    .line 149
    iget-object v5, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    iput-object v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->msisdn:Ljava/lang/String;

    .line 150
    iget-object v5, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    iput-object v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    .line 152
    .end local v2    # "mNativeLineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    :cond_7
    goto :goto_3

    .line 153
    :cond_8
    iput-object v5, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 154
    iget v2, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 157
    :cond_9
    :goto_3
    return-object v0

    .line 101
    .end local v4    # "entitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
    .end local v6    # "responseGetMsisdn":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    :cond_a
    :goto_4
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEntitlementCheckResponse: http error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/16 v2, 0xa28

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 104
    return-object v0
.end method

.method private handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isSvcProv"    # Z

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "result":I
    if-eqz p1, :cond_0

    .line 232
    const-string v1, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_RESULT_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 235
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyCallbackForNsdsEvent(I)V

    .line 237
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLocAndTcWebsheetResult: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/high16 v1, 0x140b0000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WBSHT RESULT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 240
    if-eqz p2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    .line 241
    :cond_1
    const/16 v1, 0xc

    :goto_0
    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    .line 243
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLocAndTcWebsheetRespCode(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v4, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method private handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 9
    .param p1, "responseLocation"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 212
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string v2, "manageLocationAndTC"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 214
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-eqz p1, :cond_1

    .line 215
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 216
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerData:Ljava/lang/String;

    .line 217
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mServerUrl:Ljava/lang/String;

    .line 218
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponseAvailable: update location and tc status in db. E911 AID received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 221
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 222
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    .line 220
    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateLocationAndTcStatus(JLcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;Ljava/lang/String;I)V

    .line 224
    :cond_0
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->responseCode:I

    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 226
    :cond_1
    return-object v0
.end method

.method private handleRegisterPushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 5
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 161
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 162
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-nez p1, :cond_0

    .line 163
    return-object v0

    .line 165
    :cond_0
    const-string v1, "managePushToken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 167
    .local v1, "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    if-eqz v1, :cond_1

    .line 168
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseManagePushToken for token registration : messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->messageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", responseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 173
    iget v2, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    .line 174
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "responseManagePushToken failed"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    goto :goto_0

    .line 178
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "responseManagePushToken is NULL"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_2
    :goto_0
    return-object v0
.end method

.method private handleRemovePushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 6
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 185
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 186
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-nez p1, :cond_0

    .line 187
    return-object v0

    .line 189
    :cond_0
    const-string v2, "managePushToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 191
    .local v2, "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    if-eqz v2, :cond_1

    .line 192
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseManagePushToken for token removal : messageId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->messageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", responseCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget v3, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    iput v3, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 197
    iget v3, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    if-eq v3, v1, :cond_2

    .line 198
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "responseManagePushToken failed"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x1

    iput v3, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    goto :goto_0

    .line 202
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "responseManagePushToken is NULL"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_2
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 206
    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 208
    :cond_3
    return-object v0
.end method

.method private openLocAndTCWebsheet(Z)V
    .locals 5
    .param p1, "isSvcProv"    # Z

    .line 392
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object v0

    .line 393
    .local v0, "webSheetData":Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    if-eqz v0, :cond_2

    .line 394
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLocAndTCWebsheet: url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serverData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clientName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", title "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_URL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_CLIENT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    if-eqz p1, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    .line 405
    :cond_0
    const/4 v2, 0x7

    :goto_0
    nop

    .line 406
    .local v2, "message":I
    nop

    .line 407
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 406
    const-string v4, "com.sec.vsim.ericssonnsds.LOC_AND_TC_WEBSHEET_RESULT_MESSAGE"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v4, "com.sec.vsim.ericssonnsds.LOCATION_AND_TC_MESSENGER"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->checkSntMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    const-string v4, "com.sec.vsim.ericssonnsds.action.SNT_MODE_LOCATIONANDTC_OPEN_WEBSHEET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    .line 414
    :cond_1
    const-string v4, "com.sec.vsim.ericssonnsds.action.UNIFIED_WFC_LOCATIONANDTC_OPEN_WEBSHEET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 416
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 420
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyCallbackForNsdsEvent(I)V

    .line 421
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":I
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 422
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "openLocAndTCWebsheet: missing server info, failed"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 425
    :goto_2
    return-void
.end method

.method private performNextOperation(IILjava/lang/String;)V
    .locals 4
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I
    .param p3, "nsdsMethod"    # Ljava/lang/String;

    .line 321
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performNextOperation: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nsdsMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    const-string v3, "entitlement_in_progress"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    .line 330
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mRetryCount:I

    .line 332
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getE911AidValidationBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 333
    .local v0, "dataMap":Landroid/os/Bundle;
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v2, 0x3e8

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, p3, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method private registerPushToken()V
    .locals 10

    .line 368
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPushToken: requesting push token registration"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 372
    .local v2, "voWiFiPushTokenRegister":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "pushToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 374
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v6, "vowifi+vvm"

    const/4 v7, 0x0

    const-wide/16 v8, 0x7530

    move-object v5, v0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->registerVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 377
    return-void
.end method

.method private removePushToken()V
    .locals 10

    .line 380
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePushToken: requesting push token de-registration"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    .line 383
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 384
    .local v2, "voWiFiPushTokenRegister":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "pushToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 386
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    const/4 v4, 0x0

    const-string/jumbo v6, "vowifi+vvm"

    const/4 v7, 0x0

    const-wide/16 v8, 0x7530

    move-object v5, v0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->removeVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 389
    return-void
.end method

.method private retryEntitlementAutoOn(I)V
    .locals 7
    .param p1, "operation"    # I

    .line 248
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ATT_AutoOn] EntitlementAutoOn"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activate_after_oos"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "autoActivate":Ljava/lang/String;
    const-string/jumbo v1, "retry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "inprogress"

    if-nez v3, :cond_0

    .line 253
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "entitlement_state"

    invoke-static {v3, v5, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-eqz p1, :cond_1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[ATT_AutoOn] EntitlementAutoOn - fail : remove token"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performRemovePushToken(I)V

    goto :goto_0

    .line 264
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[ATT_AutoOn] retry EntitlementAutoOn"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    :goto_0
    return-void
.end method

.method private updateEntitlementStatus(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    .line 496
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mOnSvcProv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 497
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mRetryCount:I

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string/jumbo v0, "service_provision_state"

    const/16 v1, 0x8ff

    if-ne p1, v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    .line 505
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEntitlementStatus: svc de-provision success"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    const/16 v1, 0x8fe

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9c6

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->clearDeferredMessage()V

    .line 513
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEntitlementStatus: svc provision success"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "service_provisioned"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_1
    return-void
.end method

.method private updateResponseResult(ZI)Z
    .locals 3
    .param p1, "success"    # Z
    .param p2, "errorCode"    # I

    .line 523
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 524
    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_0

    const/16 v2, 0x8ff

    if-eq p2, v2, :cond_0

    const/16 v2, 0x9c5

    if-eq p2, v2, :cond_0

    const/16 v2, 0x9c6

    if-eq p2, v2, :cond_0

    const/16 v2, 0x8fe

    if-ne p2, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 530
    :cond_2
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 580
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x68

    const-string v3, "manageLocationAndTC"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 629
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->failEntitlementAutoOn()V

    .line 630
    goto/16 :goto_0

    .line 626
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->retryEntitlementAutoOn(I)V

    .line 627
    goto/16 :goto_0

    .line 623
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->retryEntitlementAutoOn(I)V

    .line 624
    goto/16 :goto_0

    .line 620
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->retryEntitlementAutoOn(I)V

    .line 621
    goto/16 :goto_0

    .line 592
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperation(IILjava/lang/String;)V

    .line 594
    goto/16 :goto_0

    .line 588
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "managePushToken"

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperation(IILjava/lang/String;)V

    .line 590
    goto/16 :goto_0

    .line 584
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperation(IILjava/lang/String;)V

    .line 586
    goto/16 :goto_0

    .line 617
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    .line 618
    goto/16 :goto_0

    .line 614
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    .line 615
    goto/16 :goto_0

    .line 611
    :pswitch_9
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->openLocAndTCWebsheet(Z)V

    .line 612
    goto/16 :goto_0

    .line 608
    :pswitch_a
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->openLocAndTCWebsheet(Z)V

    .line 609
    goto/16 :goto_0

    .line 602
    :pswitch_b
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->removePushToken()V

    .line 603
    goto/16 :goto_0

    .line 599
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->registerPushToken()V

    .line 600
    goto/16 :goto_0

    .line 605
    :pswitch_d
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->checkVoWifiEntitlement()V

    .line 606
    goto/16 :goto_0

    .line 596
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->checkLocationAndTC()V

    .line 597
    goto/16 :goto_0

    .line 641
    :cond_0
    const/4 v0, 0x5

    .line 642
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleRemovePushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 641
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 643
    goto :goto_0

    .line 637
    :cond_1
    const/4 v0, 0x4

    .line 638
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleRegisterPushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    const/4 v2, 0x0

    .line 637
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 639
    goto :goto_0

    .line 645
    :cond_2
    const/4 v0, 0x0

    .line 646
    .local v0, "responseLocation":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 647
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 649
    :cond_3
    const/4 v1, 0x3

    .line 650
    .local v1, "prevNsdsBaseOperation":I
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activate_after_oos"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "autoActivate":Ljava/lang/String;
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->simSlot:I

    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 653
    const-string v3, "completed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 654
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[ATT_AutoOn] InProgress - CHECK_LOC_AND_TC_AUTO_ON"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/16 v1, 0x10

    .line 658
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v3

    .line 659
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;

    move-result-object v4

    .line 658
    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 660
    goto :goto_0

    .line 632
    .end local v0    # "responseLocation":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    .end local v1    # "prevNsdsBaseOperation":I
    .end local v2    # "autoActivate":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->getE911AidValidationBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 633
    .local v0, "dataMap":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    .line 634
    .local v1, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    invoke-virtual {p0, v2, v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 635
    nop

    .line 664
    .end local v0    # "dataMap":Landroid/os/Bundle;
    .end local v1    # "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v0, "translatedErrorCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    iget v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mRetryCount:I

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 671
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 669
    move v3, p1

    move v4, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/ATTWfcErrorCodeTranslator;->translateErrorCode(Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;IZIILjava/lang/String;)I

    move-result v1

    .line 672
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->updateResponseResult(ZI)Z

    move-result p1

    .line 676
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNSDSFlowResponse: success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUCS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ERRC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x140b0001

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 679
    const/16 v2, 0x900

    if-eq v2, v1, :cond_0

    .line 681
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string/jumbo v3, "request_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    const-string v4, "device_event_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    const/4 v3, 0x0

    const-string/jumbo v4, "req_toggle_off_op"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 686
    const-string v3, "error_codes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 687
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 689
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->updateEntitlementStatus(I)V

    .line 690
    return-void
.end method

.method public performE911AddressUpdate(I)V
    .locals 4
    .param p1, "deviceEventType"    # I

    .line 308
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performE911AddressUpdate: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "performE911AddressUpdate: entitlement in progress"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, v2, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0, v2, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 317
    :goto_0
    return-void
.end method

.method public performEntitlementCheck(II)V
    .locals 3
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 280
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performEntitlementCheck: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "performEntitlementCheck: entitlement in progress"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 289
    :goto_0
    return-void
.end method

.method public performRemovePushToken(I)V
    .locals 4
    .param p1, "deviceEventType"    # I

    .line 293
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performRemovePushToken: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "performRemovePushToken: entitlement in progress"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v2, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0, v2, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->clearDeferredMessage()V

    .line 304
    :goto_0
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 535
    const/4 v0, -0x1

    .line 536
    .local v0, "msgId":I
    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 568
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "queueOperation: did not match any nsds base operations"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :pswitch_0
    const/16 v0, 0xe

    .line 566
    goto :goto_0

    .line 562
    :pswitch_1
    const/16 v0, 0xd

    .line 563
    goto :goto_0

    .line 559
    :pswitch_2
    const/16 v0, 0xc

    .line 560
    goto :goto_0

    .line 556
    :pswitch_3
    const/16 v0, 0xb

    .line 557
    goto :goto_0

    .line 553
    :cond_0
    const/4 v0, 0x5

    .line 554
    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, 0x4

    .line 551
    goto :goto_0

    .line 547
    :cond_2
    const/4 v0, 0x3

    .line 548
    goto :goto_0

    .line 544
    :cond_3
    const/4 v0, 0x2

    .line 545
    goto :goto_0

    .line 541
    :cond_4
    const/4 v0, 0x0

    .line 542
    goto :goto_0

    .line 538
    :cond_5
    const/4 v0, 0x1

    .line 539
    nop

    .line 571
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 572
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 573
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 574
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/EntitlementAndE911AidCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 576
    .end local v1    # "message":Landroid/os/Message;
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
