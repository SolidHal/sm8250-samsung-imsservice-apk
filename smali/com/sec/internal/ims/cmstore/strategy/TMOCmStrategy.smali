.class public Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;
.super Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.source "TMOCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;,
        Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private FAX_API_VERSION:Ljava/lang/String;

.field private FAX_ROOT_URL:Ljava/lang/String;

.field private FAX_SERVICE:Ljava/lang/String;

.field private MSTORE_API_VERSION:Ljava/lang/String;

.field private MSTORE_SERVERROOT:Ljava/lang/String;

.field private MSTORE_STORE_NAME:Ljava/lang/String;

.field private WSG_URI:Ljava/lang/String;

.field private mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_ROOT_URL:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_API_VERSION:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_SERVICE:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->WSG_URI:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    const-string v1, "TMOCmStrategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    .line 58
    const-string v0, "https"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mProtocol:Ljava/lang/String;

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxSearch:I

    .line 60
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->onOmaFlowInitStart()V

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initSuccessfullCallFlowTranslator()V

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initFailedCallFlowTranslator()V

    .line 63
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->onOmaFlowInitComplete()V

    .line 64
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initStandardRetrySchedule()V

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initMessageAttributeRegistration()V

    .line 66
    new-instance v1, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->getDeviceId(Landroid/content/Context;)V

    .line 69
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxSearch:I

    .line 70
    return-void
.end method

.method private getDeviceId(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 612
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->DEVICE_ID_VALUE:Ljava/lang/String;

    .line 613
    return-void
.end method

.method private initFailedCallFlowTranslator()V
    .locals 5

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initOmaFailureCommonFlow()V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x191

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 159
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method private initMessageAttributeRegistration()V
    .locals 3

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    const-string v2, "Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    const-string v2, "Message-Context"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    const-string v2, "Direction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    const-string v2, "To"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    const-string v2, "Bcc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    const-string v2, "Cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->is_cpm_group:Ljava/lang/String;

    const-string v2, "$IS$CPM$GROUP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    const-string v2, "TextContent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->contribution_id:Ljava/lang/String;

    const-string v2, "$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->conversation_id:Ljava/lang/String;

    const-string v2, "$CONVERSATION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    const-string v2, "$IN$REPLY$TO$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->udh:Ljava/lang/String;

    const-string v2, "$UDH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_disposition:Ljava/lang/String;

    const-string v2, "$CALL$DISPOSTITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_duration:Ljava/lang/String;

    const-string v2, "$CALL$DURATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_starttimestamp:Ljava/lang/String;

    const-string v2, "$CALL$STARTTIMESTAMP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_type:Ljava/lang/String;

    const-string v2, "$CALL$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->participating_device:Ljava/lang/String;

    const-string v2, "$PARTICIPATING$DEVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_type:Ljava/lang/String;

    const-string v2, "$DISPOSITION$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_status:Ljava/lang/String;

    const-string v2, "$DISPOSITION$STATUS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_original_to:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->multipartContentType:Ljava/lang/String;

    const-string v2, "$MULTIPARTCONTENTTYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->message_id:Ljava/lang/String;

    const-string v2, "$MESSAGE$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->client_correlator:Ljava/lang/String;

    const-string v2, "$CLIENT$CORRELATOR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->report_requested:Ljava/lang/String;

    const-string v2, "$REPORT$REQUESTED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->content_type:Ljava/lang/String;

    const-string v2, "$CONTENT$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->mime_version:Ljava/lang/String;

    const-string v2, "$MIME$VERSION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->pwd:Ljava/lang/String;

    const-string v2, "$PWD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->old_pwd:Ljava/lang/String;

    const-string v2, "$OLD$PWD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->x_cns_greeting_type:Ljava/lang/String;

    const-string v2, "$X$CNS$GREETING$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->Content_Duration:Ljava/lang/String;

    const-string v2, "$CONTENT$DURATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->EmailAddress:Ljava/lang/String;

    const-string v2, "$EMAILADDRESS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->VVMOn:Ljava/lang/String;

    const-string v2, "$VVMOn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    .line 242
    return-void
.end method

.method private initStandardRetrySchedule()V
    .locals 3

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    .line 192
    return-void
.end method

.method private initSuccessfullCallFlowTranslator()V
    .locals 5

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->initOmaSuccessCommonFlow()V

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc9

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 119
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 126
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xcc

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 127
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 133
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 138
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 139
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 145
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private isNotificationTypeChat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pnsType"    # Ljava/lang/String;
    .param p2, "pnsSubtype"    # Ljava/lang/String;

    .line 358
    const-string v0, "RCSSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Chat"

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    nop

    .line 360
    const-string v0, "RCSPage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0
.end method

.method private isNotificationTypeFt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pnsType"    # Ljava/lang/String;
    .param p2, "pnsSubtype"    # Ljava/lang/String;

    .line 365
    const-string v0, "RCSSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "FileTransfer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    nop

    .line 367
    const-string v0, "RCSPage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const-string v0, "LMM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0
.end method

.method private isNotificationTypeVvmData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pnsType"    # Ljava/lang/String;
    .param p2, "pnsSubtype"    # Ljava/lang/String;

    .line 372
    const-string v0, "VM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "VVM"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    nop

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    const-string v0, "VMTT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0
.end method

.method private updateUserAgentIDHeader()V
    .locals 4

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "T-Mobile P20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;->USER_AGENT_ID_VALUE:Ljava/lang/String;

    .line 629
    return-void
.end method


# virtual methods
.method public getFaxApiVersion()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_API_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getFaxServerRoot()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_ROOT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getFaxServiceName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->getNativeLine()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "nativeLine":Ljava/lang/String;
    return-object v0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    return-object v0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 380
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTypeUsingMessageContext value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string/jumbo v0, "pager-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x3

    return v0

    .line 383
    :cond_0
    const-string v0, "multimedia-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const/4 v0, 0x4

    return v0

    .line 385
    :cond_1
    const-string v0, "X-RCS-Chat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_2

    .line 386
    return v1

    .line 387
    :cond_2
    const-string v0, "X-RCS-FT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_3

    .line 388
    return v2

    .line 389
    :cond_3
    const-string v0, "X-RCS-PM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    return v1

    .line 391
    :cond_4
    const-string v0, "X-RCS-LM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    return v2

    .line 393
    :cond_5
    const-string v0, "imdn-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    const/16 v0, 0xd

    return v0

    .line 395
    :cond_6
    const-string/jumbo v0, "voice-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    const/16 v0, 0x11

    return v0

    .line 397
    :cond_7
    const-string v0, "fax-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 398
    const/16 v0, 0x15

    return v0

    .line 399
    :cond_8
    const-string v0, "X-Call-History"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 400
    const/16 v0, 0x10

    return v0

    .line 401
    :cond_9
    const-string/jumbo v0, "x-voice-grtng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 402
    const/16 v0, 0x12

    return v0

    .line 403
    :cond_a
    const-string v0, "X-RCS-Chat-GSO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "X-RCS-Chat-Session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 406
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_c
    :goto_0
    const/16 v0, 0x22

    return v0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "linenum"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mJanskyProviderAdapter:Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->getSIT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "returnedToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string v1, ""

    return-object v1

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected isCarrierStrategyDiffFromCommonRuleByCode(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 3
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p3, "statusCode"    # I

    .line 582
    const/16 v0, 0x191

    if-ne p3, v0, :cond_0

    .line 583
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], 401, CREDENTIAL_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    .line 585
    const/4 v0, 0x1

    return v0

    .line 587
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidOMARequestUrl()Z
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    .line 602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    .line 603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 604
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    const-string v1, "isValidOMARequestUrl: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public makeParamNotificationType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
    .locals 3
    .param p1, "pnsType"    # Ljava/lang/String;
    .param p2, "pnsSubtype"    # Ljava/lang/String;

    .line 294
    const-string v0, "SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MOMT"

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 299
    :cond_0
    const-string v0, "MMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 304
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->isNotificationTypeChat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const-string v2, "CHAT"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 308
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->isNotificationTypeFt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const-string v2, "FT"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 312
    :cond_3
    const-string v0, "RCSPage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    const-string v0, "IMDN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 317
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->isNotificationTypeVvmData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v1, 0x11

    const-string v2, "VVMDATA"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 321
    :cond_5
    const-string v0, "VM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    const-string v1, "VVG"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v1, 0x12

    const-string v2, "GREETING"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 326
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 327
    const-string v1, "VVME"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 328
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v1, 0x14

    const-string v2, "PROFILE"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 331
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 332
    const-string v0, "VVMP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v1, 0x13

    const-string v2, "PIN"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 336
    :cond_8
    const-string v0, "Fax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 337
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 338
    const-string v0, "FaxD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 339
    :cond_9
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v1, 0x15

    const-string v2, "FAX"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 342
    :cond_a
    const-string v0, "Call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    const-string v0, "History"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 344
    new-instance v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v1, 0x10

    const-string v2, "CALLLOGDATA"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 347
    :cond_b
    const-string v0, "RCSSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 348
    const-string v0, "GSO"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 349
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    const/16 v2, 0x22

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 353
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDeviceConfigUsed(Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "SiTUrl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 413
    .local v3, "SITUrl":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceConfigUsed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "serverroot":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 419
    .local v4, "protocal":I
    add-int/lit8 v5, v4, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_SERVERROOT:Ljava/lang/String;

    .line 420
    sget-object v6, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .end local v0    # "serverroot":Ljava/net/URL;
    .end local v4    # "protocal":I
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 427
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    const-string/jumbo v0, "rootURL"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 428
    .local v4, "faxUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "faxRootUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "serverroot":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 434
    .local v5, "protocal":I
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_ROOT_URL:Ljava/lang/String;

    .line 435
    sget-object v6, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAX_ROOT_URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    nop

    .end local v0    # "serverroot":Ljava/net/URL;
    .end local v5    # "protocal":I
    goto :goto_1

    .line 436
    :catch_1
    move-exception v0

    .line 438
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 442
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_1
    const-string v0, ""

    .line 443
    .local v0, "configDetails":Ljava/lang/String;
    const-string v5, "faxApiVersion"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 444
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_API_VERSION:Ljava/lang/String;

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FAX_API_VERSION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_API_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_2
    const-string/jumbo v5, "serviceName"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 449
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_SERVICE:Ljava/lang/String;

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FAX_SERVICE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->FAX_SERVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_3
    const-string v5, "WSG_URI"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 454
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->WSG_URI:Ljava/lang/String;

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " WSG_URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->WSG_URI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :cond_4
    const-string v5, "apiVersion"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 459
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " MSTORE_API_VERSION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_API_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_5
    const-string/jumbo v5, "storeName"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 464
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " MSTORE_STORE_NAME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->MSTORE_STORE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    :cond_6
    const-string v5, "MaxBulkDelete"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 469
    .local v5, "maxBulkDelete":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 470
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 471
    .local v6, "parsedValue":Ljava/lang/Integer;
    if-nez v6, :cond_7

    iget v7, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxBulkDelete:I

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_2
    iput v7, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxBulkDelete:I

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " MAX_BULK_DELETE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxBulkDelete:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .end local v6    # "parsedValue":Ljava/lang/Integer;
    :cond_8
    const-string v6, "MaxSearch"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 476
    .local v6, "maxSearch":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 477
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 478
    .local v7, "parsedValue":Ljava/lang/Integer;
    if-nez v7, :cond_9

    iget v8, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxSearch:I

    goto :goto_3

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    iput v8, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxSearch:I

    .line 479
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " MAX_SEARCH : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->mMaxSearch:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .end local v7    # "parsedValue":Ljava/lang/Integer;
    :cond_a
    sget-object v7, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v0, ""

    .line 484
    const-string v7, "CallHistory"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 485
    .local v7, "callId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 486
    sput-object v7, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mCallHistory:Ljava/lang/String;

    .line 487
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mCallHistory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_b
    const-string v8, "Media/Fax"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 491
    .local v8, "faxId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 492
    sput-object v8, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mMediaFax:Ljava/lang/String;

    .line 493
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " mMediaFax : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_c
    const-string v9, "RCSMessageStore"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 497
    .local v9, "rcsId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 498
    sput-object v9, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mRCSMessageStore:Ljava/lang/String;

    .line 499
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mRCSMessageStore : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_d
    const-string v10, "VV-Mail/Greetings"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 503
    .local v10, "greetingId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 504
    sput-object v10, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    .line 505
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mVVMailGreeting : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_e
    const-string v11, "VV-Mail/Inbox"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 509
    .local v11, "vmId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 510
    sput-object v11, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    .line 511
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " mVVMailInbox : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    :cond_f
    sget-object v12, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TmoMessageFolderId values: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, ""

    .line 516
    const-string v12, "CallLog"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 517
    .local v12, "calllog":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 518
    sget-object v13, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calllog "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object v13, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    sput-wide v13, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->CALL_LOG:J

    goto :goto_4

    .line 521
    :cond_10
    sget-object v13, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x7

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    sput-wide v18, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->CALL_LOG:J

    .line 523
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " CALL_LOG "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->CALL_LOG:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    const-string v13, "Message"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 526
    .local v13, "msg":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 527
    sget-object v14, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->MESSAGE:J

    goto :goto_5

    .line 530
    :cond_11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x7

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    sput-wide v18, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->MESSAGE:J

    .line 532
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " MESSAGE "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->MESSAGE:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v1, "VVM"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    .local v1, "vvm":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 536
    sget-object v14, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "SITUrl":Ljava/lang/String;
    .local v18, "SITUrl":Ljava/lang/String;
    const-string/jumbo v3, "vvm "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->VVM:J

    goto :goto_6

    .line 539
    .end local v18    # "SITUrl":Ljava/lang/String;
    .restart local v3    # "SITUrl":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v3

    .end local v3    # "SITUrl":Ljava/lang/String;
    .restart local v18    # "SITUrl":Ljava/lang/String;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x7

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    sput-wide v19, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->VVM:J

    .line 541
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " VVM "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->VVM:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v3, "FAX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 544
    .local v3, "fax":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 545
    sget-object v14, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v1

    .end local v1    # "vvm":Ljava/lang/String;
    .local v19, "vvm":Ljava/lang/String;
    const-string v1, "fax "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->FAX:J

    goto :goto_7

    .line 548
    .end local v19    # "vvm":Ljava/lang/String;
    .restart local v1    # "vvm":Ljava/lang/String;
    :cond_13
    move-object/from16 v19, v1

    .end local v1    # "vvm":Ljava/lang/String;
    .restart local v19    # "vvm":Ljava/lang/String;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->FAX:J

    .line 550
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " FAX "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->FAX:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    const-string v1, "VVMGreeting"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 553
    .local v1, "greeting":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 554
    sget-object v14, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "fax":Ljava/lang/String;
    .local v16, "fax":Ljava/lang/String;
    const-string v3, "greeting "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->GREETING:J

    goto :goto_8

    .line 557
    .end local v16    # "fax":Ljava/lang/String;
    .restart local v3    # "fax":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v3

    .end local v3    # "fax":Ljava/lang/String;
    .restart local v16    # "fax":Ljava/lang/String;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0xb4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->GREETING:J

    .line 559
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " GREETING "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->GREETING:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    sget-object v3, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TmoMessageSyncPeriod values: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v3, "PushSyncDelay"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "pushSyncDelay":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 564
    sget-object v14, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "configDetails":Ljava/lang/String;
    .local v17, "configDetails":Ljava/lang/String;
    const-string/jumbo v0, "pushSyncDelay "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->PUSH_SYNC_DELAY:J

    goto :goto_9

    .line 567
    .end local v17    # "configDetails":Ljava/lang/String;
    .restart local v0    # "configDetails":Ljava/lang/String;
    :cond_15
    move-object/from16 v17, v0

    .end local v0    # "configDetails":Ljava/lang/String;
    .restart local v17    # "configDetails":Ljava/lang/String;
    const-wide/16 v14, 0x7d00

    sput-wide v14, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->PUSH_SYNC_DELAY:J

    .line 569
    :goto_9
    return-void
.end method

.method public shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appType"    # Ljava/lang/String;

    .line 592
    const-string v0, "RCSDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x0

    return v0

    .line 595
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldEnableNetAPIWorking(ZZZZ)Z
    .locals 0
    .param p1, "mIsNetworkValid"    # Z
    .param p2, "mIsDefaultMsgAppNative"    # Z
    .param p3, "mIsUserDeleteAccount"    # Z
    .param p4, "mIsProvisionSuccess"    # Z

    .line 575
    return p1
.end method

.method public updateHTTPHeader()V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;->updateUserAgentIDHeader()V

    .line 634
    return-void
.end method
