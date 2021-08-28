.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
.super Landroid/os/Handler;
.source "BaseFlowImpl.java"


# static fields
.field public static final ACTIVATE_SIM_DEVICE:I = 0x20

.field public static final AKA_TOKEN_PRESENT:I = 0x1

.field private static final AKA_TOKEN_RECEIVED:I = 0x5

.field protected static final CHALLENGE_CALCULATED:I = 0x2

.field public static final CHECK_LOC_AND_TC:I = 0x21

.field public static final DEACTIVATE_DEVICE:I = 0x28

.field public static final ENTITLMENT_CHECK:I = 0x1e

.field protected static final EVENT_SIM_AUTH_RESPONSE:I = 0x4

.field protected static final INITIAL_3GPP_AUTH_RESPONSE:I = 0x1

.field protected static final KEY_AKA_TOKEN:Ljava/lang/String; = "AKA_TOKEN"

.field protected static final KEY_IMSI_EAP:Ljava/lang/String; = "IMSI_EAP"

.field public static final KEY_REQUEST_MESSAGE:Ljava/lang/String; = "REQUEST_MESSAGE"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final REGISTER_PUSH_TOKEN:I = 0x29

.field public static final REMOVE_PUSH_TOKEN:I = 0x2a

.field protected static final RESPONSE_RECEIVED:I = 0x3

.field public static final RETRIEVE_AKA_TOKEN:I = 0x2f

.field public static final RETRIEVE_AVAILABLE_MSISDN:I = 0x2d

.field public static final RETRIEVE_DEVICE_CONFIG:I = 0x1f

.field public static final UPDATE_DEVICE_CONFIG:I = 0x26


# instance fields
.field protected mAkaToken:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field protected mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

.field private mSimAuthType:Ljava/lang/String;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 69
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mAkaToken:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeviceId:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimAuthType:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    .line 70
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 72
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    invoke-direct {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getAkaTokenFromSharedPreference()Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private calculateChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V
    .locals 2
    .param p1, "response3gppAuthentication"    # Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 398
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mAkaToken:Ljava/lang/String;

    .line 399
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaChallenge:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->decodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "challenge":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->requestIsimAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private clearAkaToken()V
    .locals 2

    .line 316
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearAkaToken()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mAkaToken:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removeAkaToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private final deferWithZeroIndexMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 185
    if-nez p1, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferWithZeroIndexMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method private executeRequest(Landroid/os/Message;Ljava/lang/String;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "calculatedChallenge"    # Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getAkaTokenFromSharedPreference()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "akaToken":Ljava/lang/String;
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;

    .line 231
    .local v3, "baseProcedure":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
    new-instance v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 232
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    iget-object v7, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getImsiEap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getEncodedDeviceId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-direct {v4, v7, v2, v5, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    move-result-object v4

    .line 234
    .local v4, "arrRequest":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    if-nez v4, :cond_0

    .line 235
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "executeRequest: NSDS Requests is null. reporting failure"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->reportResult(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 237
    return-void

    .line 240
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainReponseReceivedMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    .line 241
    .local v5, "responseReceivedMsg":Landroid/os/Message;
    iget-object v8, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->shouldIncludeAuthHeader()Z

    move-result v11

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getVersionInfo()Ljava/lang/String;

    move-result-object v12

    .line 242
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getUserAgent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getImeiForUA()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v16

    .line 241
    move-object v9, v4

    move-object v10, v5

    invoke-virtual/range {v8 .. v16}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private executeRequestWithAkaToken(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "imsiEap"    # Ljava/lang/String;
    .param p3, "akaToken"    # Ljava/lang/String;

    .line 246
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;

    .line 247
    .local v0, "baseProcedure":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getEncodedDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, p3, p2, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    move-result-object v1

    .line 248
    .local v1, "arrRequest":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    if-nez v1, :cond_0

    .line 249
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "executeRequest: NSDS Requests is null. reporting failure"

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->reportResult(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainReponseReceivedMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 255
    .local v2, "responseReceivedMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getVersionInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeviceId:Ljava/lang/String;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private getAkaTokenFromSharedPreference()Ljava/lang/String;
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    const-string v1, "ericsson.nsds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mAkaToken:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mAkaToken:Ljava/lang/String;

    return-object v1
.end method

.method private isResponseAkaChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z
    .locals 2
    .param p1, "response3GppAuthentication"    # Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 470
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->responseCode:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 213
    .local v1, "curMsg":Landroid/os/Message;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 211
    .end local v1    # "curMsg":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    return-void
.end method

.method private obtainReponseReceivedMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "requestBundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    const-string v2, "REQUEST_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 262
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 263
    .local v1, "parsedResponseMessage":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 264
    return-object v1
.end method

.method private processBaseRequest(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getAkaTokenFromSharedPreference()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->deferWithZeroIndexMessage(Landroid/os/Message;)V

    .line 139
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->requestInitial3gppAuthentication(Landroid/os/Message;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->executeRequest(Landroid/os/Message;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void
.end method

.method private processSimAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "akaChallenge"    # Ljava/lang/String;
    .param p2, "isimResponse"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getImsiEap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "imsiEap":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "process3gppAuthResponse: failed to get SIM info"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->report3gppAuthError(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V

    .line 409
    return-void

    .line 411
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->generateChallengeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "challengeResponse":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 413
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "process3gppAuthResponse: failed to generate challenge response"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->report3gppAuthError(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V

    .line 417
    return-void

    .line 420
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process3gppAuthResponse: challenge response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 423
    .local v1, "messageProcessCalculatedChallenge":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 425
    return-void
.end method

.method private report3gppAuthError(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V
    .locals 2
    .param p1, "reponse3gppAuthentication"    # Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 434
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v0, "bundleNSDSResponses":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 436
    const-string v1, "3gppAuthentication"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->reportResultForDeferredMessages(Landroid/os/Bundle;)V

    .line 439
    return-void
.end method

.method private reportResultForDeferredMessages(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 220
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "3gpp auth failed. reportResultForDeferredMessages: "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 223
    .local v1, "curMsg":Landroid/os/Message;
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->reportResult(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 221
    .end local v1    # "curMsg":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    return-void
.end method

.method private requestIsimAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "akaChallenge"    # Ljava/lang/String;

    .line 376
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestIsimAuthentication"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v1, "dataMap":Landroid/os/Bundle;
    const-string v2, "AKA_CHALLENGE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 381
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimAuthType:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "usim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimAuthType:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "isim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v3, 0x5

    invoke-interface {v2, p1, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 388
    :goto_0
    return-void
.end method


# virtual methods
.method protected final deferMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 195
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeviceId:Ljava/lang/String;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedDeviceId()Ljava/lang/String;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getEncodedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    return-object v0
.end method

.method public getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: evt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 94
    .local v0, "isAkaTokenPresent":Z
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_7

    const/4 v2, 0x2

    if-eq v3, v2, :cond_5

    const/4 v1, 0x3

    if-eq v3, v1, :cond_4

    const/4 v1, 0x4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x5

    if-eq v3, v1, :cond_2

    .line 126
    if-nez v0, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->processBaseRequest(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "IMSI_EAP"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AKA_TOKEN"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->executeRequestWithAkaToken(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->moveDeferredMessageAtFrontOfQueue()V

    .line 121
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 107
    .local v1, "dataMap":Landroid/os/Bundle;
    const-string v2, "AKA_CHALLENGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "akaChallenge":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "isimResponse":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->processSimAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_1

    .line 123
    .end local v1    # "dataMap":Landroid/os/Bundle;
    .end local v2    # "akaChallenge":Ljava/lang/String;
    .end local v3    # "isimResponse":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->onResponseReceived(Landroid/os/Message;)V

    .line 124
    goto :goto_1

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 113
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 114
    .local v1, "challengedMessage":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->executeRequest(Landroid/os/Message;Ljava/lang/String;)V

    .line 115
    .end local v1    # "challengedMessage":Landroid/os/Message;
    goto :goto_1

    .line 116
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "!!!!Deferred messages should not be empty here.!!!. It will recover with initial3gppAuth"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    goto :goto_1

    .line 96
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "3gppAuthentication"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 98
    .local v2, "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->isResponseAkaChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 99
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->calculateChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V

    goto :goto_1

    .line 101
    :cond_8
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "responseCollection is null"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->reportResultForDeferredMessages(Landroid/os/Bundle;)V

    .line 104
    nop

    .line 133
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    :goto_1
    return-void
.end method

.method protected isAuthenticationSuccessful(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z
    .locals 2
    .param p1, "response3GppAuthentication"    # Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 466
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->responseCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onResponseReceived(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 280
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    const/4 v2, 0x0

    .line 284
    .local v2, "requestMessage":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 285
    const-string v3, "3gppAuthentication"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 286
    const-string v3, "REQUEST_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/Message;

    .line 294
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->isAuthenticationSuccessful(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 295
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponseReceived: akaToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mAkaToken:Ljava/lang/String;

    .line 297
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->updateAkaTokenInSharedPref(Ljava/lang/String;)V

    .line 299
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 300
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->isResponseAkaChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 301
    iget v3, v2, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 302
    .local v3, "shouldIgnoreChallenge":Z
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response is akaChallenge. shouldIgnoreChallenge:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-nez v3, :cond_4

    .line 304
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->clearAkaToken()V

    .line 312
    .end local v3    # "shouldIgnoreChallenge":Z
    :cond_4
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->reportResult(Landroid/os/Message;Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "operation"    # I
    .param p2, "responseValidator"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
    .param p3, "messenger"    # Landroid/os/Messenger;

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "message":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 163
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method public performOperationWithAkaToken(ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V
    .locals 3
    .param p1, "operation"    # I
    .param p2, "imsiEap"    # Ljava/lang/String;
    .param p3, "akaToken"    # Ljava/lang/String;
    .param p4, "responseValidator"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
    .param p5, "messenger"    # Landroid/os/Messenger;

    .line 150
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "IMSI_EAP"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "AKA_TOKEN"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    iput-object p5, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 157
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method protected reportResult(Landroid/os/Message;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "requestMessage"    # Landroid/os/Message;
    .param p2, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 325
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "responseMessage":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 329
    .end local v0    # "responseMessage":Landroid/os/Message;
    goto :goto_0

    .line 330
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "!!!requestMsg is null or requestMsg.replyTo is null!!!!"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not send the response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method protected requestInitial3gppAuthentication(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 344
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestInitial3gppAuthentication()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 349
    .local v0, "mMessageIdGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;

    .line 350
    .local v1, "baseProcedure":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 351
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getImsiEap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 352
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getEncodedDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 350
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v2

    .line 353
    .local v2, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v3, 0x1

    new-array v5, v3, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 354
    .local v5, "arrRequest":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mNSDSClient:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getVersionInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 355
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeviceId:Ljava/lang/String;

    .line 354
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public resubmitWithChallenge(Landroid/os/Message;Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V
    .locals 3
    .param p1, "challengedMessage"    # Landroid/os/Message;
    .param p2, "response3gppAuthentication"    # Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 167
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resubmitWithChallenge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->deferWithZeroIndexMessage(Landroid/os/Message;)V

    .line 170
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->calculateChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->deferMessage(Landroid/os/Message;)V

    .line 174
    :goto_0
    return-void
.end method

.method public setSimAuthAppType(Ljava/lang/String;)V
    .locals 0
    .param p1, "simAuthAppType"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimAuthType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method protected updateAkaTokenInSharedPref(Ljava/lang/String;)V
    .locals 6
    .param p1, "akaToken"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mContext:Landroid/content/Context;

    const-string v1, "ericsson.nsds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 450
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateAkaTokenInSharedPref: failed"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void

    .line 453
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 454
    .local v1, "prefEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 456
    .local v2, "isUpdated":Z
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAkaTokenInSharedPref: isSuccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " akaToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method
