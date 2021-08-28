.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "XaaEntitlementCheckFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;


# static fields
.field private static final INIT_E911_ADDRESS_UPDATE:I = 0x7

.field private static final INIT_ENTITLEMENT_CHECK:I = 0x6

.field protected static final LOCATION_AND_TC_CHECK:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final OPEN_E911_ADDRESS_UPDATE_WEBSHEET:I = 0x3

.field protected static final OPEN_LOC_AND_TC_WEBSHEET:I = 0x2

.field protected static final RESULT_SVC_PROV_LOC_AND_TC_WEBSHEET:I = 0x4

.field protected static final RESULT_UPDATE_LOC_AND_TC_WEBSHEET:I = 0x5

.field protected static final VOWIFI_ENTITLEMENT_CHECK:I = 0x1


# instance fields
.field protected mServerData:Ljava/lang/String;

.field protected mServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 63
    return-void
.end method

.method private checkLocationAndTC()V
    .locals 10

    .line 174
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkLocationAndTC()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v0

    .line 177
    .local v0, "nativeLineDetail":Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 178
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkLocationAndTC: native line detail is null"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_state"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 181
    return-void

    .line 184
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v8, Landroid/os/Messenger;

    invoke-direct {v8, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v9, "1.0"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 187
    .local v2, "manageLocationAndTC":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;
    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->checkLocationAndTC(Ljava/lang/String;ZJ)V

    .line 188
    return-void
.end method

.method private checkSntMode()Z
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private checkVoWifiEntitlement()V
    .locals 8

    .line 191
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkVoWifiEntitlement: requesting entitlement check"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "vowifi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "1.0"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 198
    .local v1, "bulkEntitlementCheck":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;
    const/4 v2, 0x1

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;ZJ)V

    .line 199
    return-void
.end method

.method private getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    .locals 4

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "webSheetData":Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerData:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getLocAndTcWebSheetData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object v0

    .line 285
    :cond_0
    return-object v0
.end method

.method private getLocAndTcWebsheetRespCode(I)I
    .locals 1
    .param p1, "result"    # I

    .line 260
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 274
    const/16 v0, 0x8fd

    .local v0, "respCode":I
    goto :goto_0

    .line 271
    .end local v0    # "respCode":I
    :cond_0
    const/16 v0, 0x900

    .line 272
    .restart local v0    # "respCode":I
    goto :goto_0

    .line 265
    .end local v0    # "respCode":I
    :cond_1
    const/16 v0, 0x9c4

    .line 266
    .restart local v0    # "respCode":I
    goto :goto_0

    .line 262
    .end local v0    # "respCode":I
    :cond_2
    const/16 v0, 0x3e8

    .line 263
    .restart local v0    # "respCode":I
    goto :goto_0

    .line 268
    .end local v0    # "respCode":I
    :cond_3
    const/16 v0, 0x8fc

    .line 269
    .restart local v0    # "respCode":I
    nop

    .line 277
    :goto_0
    return v0
.end method

.method private getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;
    .locals 5
    .param p1, "responseLocation"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_3

    .line 243
    const/4 v1, 0x0

    .line 245
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

    .line 246
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    :cond_1
    const/4 v1, 0x1

    .line 249
    :cond_2
    const-string v2, "loc_and_tc_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    const-string v3, "loc_and_tc_server_url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    const-string v3, "loc_and_tc_server_data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocationAndTCStatusBundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v1    # "locAndTcStatus":Z
    :cond_3
    return-object v0
.end method

.method private handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 8
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 66
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 67
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-nez p1, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v1

    .line 72
    .local v1, "errorResponseCode":I
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getHttpErrRespReason(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "errorResponseReason":Ljava/lang/String;
    if-gtz v1, :cond_6

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 80
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 81
    .local v2, "entitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
    if-eqz v2, :cond_5

    .line 82
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseServiceEntitlementStatus :messageId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->messageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "responseCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_4

    .line 86
    iget-object v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 87
    .local v5, "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    iget-object v6, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string/jumbo v7, "vowifi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service responseCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v4, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v4, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 90
    goto :goto_1

    .line 92
    .end local v5    # "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    goto :goto_2

    .line 94
    :cond_4
    iget v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    iput v4, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 97
    :cond_5
    :goto_2
    return-object v0

    .line 75
    .end local v2    # "entitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
    :cond_6
    :goto_3
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    .line 76
    const/16 v2, 0xa28

    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 77
    return-object v0
.end method

.method private handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isSvcProv"    # Z

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "result":I
    if-eqz p1, :cond_0

    .line 118
    const-string v1, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_RESULT_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyCallbackForNsdsEvent(I)V

    .line 123
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLocAndTcWebsheetResult: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    :goto_0
    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    .line 127
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLocAndTcWebsheetRespCode(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v4, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method private handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 9
    .param p1, "responseLocation"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 101
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string v2, "manageLocationAndTC"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 102
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-eqz p1, :cond_1

    .line 103
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerData:Ljava/lang/String;

    .line 105
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mServerUrl:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onResponseAvailable: update location and tc status in db"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 108
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    .line 107
    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateLocationAndTcStatus(JLcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;Ljava/lang/String;I)V

    .line 110
    :cond_0
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->responseCode:I

    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 112
    :cond_1
    return-object v0
.end method

.method private openLocAndTCWebsheet(Z)V
    .locals 6
    .param p1, "isSvcProv"    # Z

    .line 202
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLocAndTcWebSheetData()Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;

    move-result-object v0

    .line 203
    .local v0, "webSheetData":Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
    if-eqz v0, :cond_2

    .line 204
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLocAndTCWebsheet: url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "serverData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "clientName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "title "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_URL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_CLIENT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    const-string v3, "com.sec.vsim.ericssonnsds.LOCATIONANDTC_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    .line 215
    .local v3, "message":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.LOC_AND_TC_WEBSHEET_RESULT_MESSAGE"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v5, "com.sec.vsim.ericssonnsds.LOCATION_AND_TC_MESSENGER"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 218
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v4, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->checkSntMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    const-string v5, "com.sec.vsim.ericssonnsds.action.SNT_MODE_LOCATIONANDTC_OPEN_WEBSHEET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_1

    .line 222
    :cond_1
    const-string v5, "com.sec.vsim.ericssonnsds.action.UNIFIED_WFC_LOCATIONANDTC_OPEN_WEBSHEET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 224
    :goto_1
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyCallbackForNsdsEvent(I)V

    .line 229
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "message":I
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 230
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "openLocAndTCWebsheet: missing server info, failed"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 233
    :goto_2
    return-void
.end method

.method private performNextOperation(IILjava/lang/String;)V
    .locals 4
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I
    .param p3, "nsdsMethod"    # Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    const-string v3, "entitlement_in_progress"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    .line 168
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mRetryCount:I

    .line 170
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v1, 0x3e8

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, p3, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method private updateEntitlementStatus(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    .line 290
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mRetryCount:I

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitlement_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v0, "service_provision_state"

    const/16 v1, 0x8ff

    if-ne p1, v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    .line 297
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEntitlementStatus: svc de-provision success"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    const/16 v1, 0x8fe

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9c6

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_1

    .line 303
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->clearDeferredMessage()V

    .line 304
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEntitlementStatus: svc provision success"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "service_provisioned"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_1
    return-void
.end method

.method private updateResponseResult(ZI)Z
    .locals 1
    .param p1, "success"    # Z
    .param p2, "errorCode"    # I

    .line 312
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8ff

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9c5

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9c6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8fe

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 348
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x68

    const-string v2, "manageLocationAndTC"

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperation(IILjava/lang/String;)V

    .line 356
    goto :goto_0

    .line 352
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperation(IILjava/lang/String;)V

    .line 353
    goto :goto_0

    .line 373
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    .line 374
    goto :goto_0

    .line 370
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleLocAndTcWebsheetResult(Landroid/os/Bundle;Z)V

    .line 371
    goto :goto_0

    .line 367
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->openLocAndTCWebsheet(Z)V

    .line 368
    goto :goto_0

    .line 364
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->openLocAndTCWebsheet(Z)V

    .line 365
    goto :goto_0

    .line 361
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->checkVoWifiEntitlement()V

    .line 362
    goto :goto_0

    .line 358
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->checkLocationAndTC()V

    .line 359
    goto :goto_0

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 380
    .local v0, "responseLocation":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 383
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleManageLocationAndTcResponse(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v2

    .line 384
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->getLocationAndTCStatusBundle(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;)Landroid/os/Bundle;

    move-result-object v3

    .line 383
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 385
    goto :goto_0

    .line 376
    .end local v0    # "responseLocation":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 377
    nop

    .line 389
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 5
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "translatedErrorCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    invoke-static {v1, p1, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaWfcErrorCodeTranslator;->translateErrorCode(IZI)I

    move-result v1

    .line 395
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->updateResponseResult(ZI)Z

    move-result p1

    .line 399
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNSDSFlowResponse: success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/16 v2, 0x900

    if-eq v2, v1, :cond_0

    .line 403
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string/jumbo v3, "request_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    const-string v4, "device_event_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const/4 v3, 0x1

    const-string/jumbo v4, "req_toggle_off_op"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v3, "error_codes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 409
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 411
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->updateEntitlementStatus(I)V

    .line 412
    return-void
.end method

.method public performE911AddressUpdate(I)V
    .locals 4
    .param p1, "deviceEventType"    # I

    .line 150
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performE911AddressUpdate: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ongoingEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "performE911AddressUpdate: entitlement in progress"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v2, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, v2, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 158
    :goto_0
    return-void
.end method

.method public performEntitlementCheck(II)V
    .locals 3
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 131
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

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

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mDeviceEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInEntitlementProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "performEntitlementCheck: entitlement in progress"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 140
    :goto_0
    return-void
.end method

.method public performRemovePushToken(I)V
    .locals 3
    .param p1, "deviceEventType"    # I

    .line 144
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "performRemovePushToken: not supported"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 146
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 321
    const/4 v0, -0x1

    .line 322
    .local v0, "msgId":I
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 336
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "queueOperation: did not match any nsds base operations"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    const/4 v0, 0x3

    .line 334
    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x2

    .line 331
    goto :goto_0

    .line 327
    :cond_2
    const/4 v0, 0x0

    .line 328
    goto :goto_0

    .line 324
    :cond_3
    const/4 v0, 0x1

    .line 325
    nop

    .line 339
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 340
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 341
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaEntitlementCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 344
    .end local v1    # "message":Landroid/os/Message;
    :cond_4
    return-void
.end method
